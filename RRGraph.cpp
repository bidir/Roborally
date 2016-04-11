/*
 * ================================== CPP ======================================
 * Filename: RRGraph.cpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 10/04/2016 23:46:10
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (idirux), idirux.ouchen@gmail.com
 * =============================================================================
 */


#include <iostream>
#include <limits.h>
#include "Log.hpp"
#include "Exceptions.hpp"
#include "RRGraph.hpp"
#include "tools.hpp"


using namespace std;
using namespace tools;

/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRGraph
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
RRGraph::RRGraph():
    _node(NULL),
    _board(),
    _nodes()
{}

RRGraph::RRGraph(const string &filename):
    _node(NULL),
    _nodes()
{
    try
    {
        rr_board_init(_board, filename.c_str());
    }
    catch(Exception &ex)
    {
        AddTrace(ex);
    }
}

RRGraph::~RRGraph()
{
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        if(_nodes[i] && _nodes[i] != RRNode::DEAD)
        {
            delete _nodes[i];
        }
    }
    rr_board_destroy(_board);
}


/* ====================  Accessors     ==================== */
bool RRGraph::isDead()
{
    return _node->isDead();
}

RRNode *RRGraph::getNode()
{
    return RRGraph::_node;
}

RRRobot RRGraph::getRobot()
{
    return _node->getRobot();
}

RRBoard RRGraph::getBoard()
{
    return _board;
}


/* ====================  Methods       ==================== */
void RRGraph::init(RRRobot &robot)
{
    _nodes.clear();
    RRNode *rr_node = new RRNode(robot);
    for(int m = 0; m < NB_MOVES; m++)
    {
        RRRobot bot = robot;
        rr_board_play(_board, bot, MOVES[m]);
        if(bot.status == RRRobotStatus::RR_ROBOT_DEAD)
        {
            rr_node->setVoisin(MOVES[m], RRNode::DEAD);
        }
        else
        {
            RRNode *rr_node2 = new RRNode(bot);
            int index = isNodeExists(*rr_node2);
            if(index != -1)
            {
                rr_node->setVoisin(MOVES[m], _nodes[index]);
            }
            else
            {
                rr_node->setVoisin(MOVES[m], rr_node2);
            }
        }
    }

    _nodes.push_back(rr_node);
    init();
    _node = rr_node;
}

void RRGraph::init()
{
    for(unsigned int n = 0; n < _nodes.size(); n++)
    {
        RRNode *node = _nodes[n];
        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *voisin = node->getVoisin(MOVES[i]);
            //Si voisin n'est pas case morte et si il n'a pas deja ete traite
            if(voisin != RRNode::DEAD && voisin->getVoisin(MOVES[0]) == NULL)
            {
                for(int m = 0; m < NB_MOVES; m++)
                {
                    RRRobot bot = voisin->getRobot();
                    rr_board_play(_board, bot, MOVES[m]);
                    if(bot.status == RRRobotStatus::RR_ROBOT_DEAD)
                    {
                        voisin->setVoisin(MOVES[m], RRNode::DEAD);
                    }
                    else
                    {
                        RRNode *rr_node2 = new RRNode(bot);
                        int index = isNodeExists(*rr_node2);
                        if(index != -1)
                        {
                            voisin->setVoisin(MOVES[m], _nodes[index]);
                        }
                        else
                        {
                            voisin->setVoisin(MOVES[m], rr_node2);
                        }
                    }
                }
                _nodes.push_back(voisin);
            }
        }
    }
}

void RRGraph::init(const std::string filename, RRRobot &robot)
{
    try
    {
        rr_board_init(_board, filename.c_str());
    }
    catch(Exception &ex)
    {
        AddTrace(ex);
    }

    if(!_board.tile_size)
    {
        throw GenEx(ExBoard, "Recuperation des donnees dans \"" + filename + "\": le plateau est vide!");
    }
    init(robot);
}

int RRGraph::isNodeExists(RRNode &node)
{
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        if(node == *_nodes[i])
        {
            return i;
        }
    }
    return -1;
}

void RRGraph::move(RRRobotMove move)
{
    if(_node == RRNode::DEAD)
    {
        return;
    }
    _node = _node->getVoisin(move);
}

void RRGraph::bestRoute(unsigned int line, unsigned int column)
{
    if(_nodes.size() == 0)
    {
        return;
    }

    vector<RRNode *> queue(0);
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        _nodes[i]->setBestPrev(NULL);
        _nodes[i]->setVisited(false);
        _nodes[i]->setInQueue(false);
        _nodes[i]->setSolved(false);
        _nodes[i]->setDistance(INT_MAX);
    }

    _nodes[0]->setDistance(0);
    _nodes[0]->setInQueue(true);
    queue.push_back(_nodes[0]);

    while(!queue.empty())
    {
        unsigned int min_index = minDist(queue);
        RRNode *v = queue[min_index];
        queue.erase(queue.begin() + min_index);

        v->setSolved(true);

        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *w = v->getVoisin(MOVES[i]);
            if(!w->isSolved())
            {
                int dvw = 1;
                if(w->getDistance() > v->getDistance() + dvw)
                {
                    w->setDistance(v->getDistance() + dvw);
                    w->setBestPrev(v);
                }
                if(!w->isVisited())
                {
                    w->setInQueue(true);
                }
            }
        }
    }
}

unsigned int RRGraph::minDist(vector<RRNode *> &queue)
{
    unsigned int min = 0;
    for(unsigned int i = 0; i < queue.size(); i++)
    {
        if(queue[i]->getDistance() < queue[min]->getDistance())
        {
            min = i;
        }
    }

    return min;
}
