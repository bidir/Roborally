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
    RRGraph()
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


/* ====================  Mutators      ==================== */


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
    _node = rr_node;
    init();
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

RRNode *RRGraph::findBestRoute(RRRobot &robot)
{
    if(_nodes.size() == 0)
    {
        return NULL;
    }

    RRNode node(robot);
    unsigned int line(robot.line), column(robot.column);
    vector<RRNode *> queue(0);
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        _nodes[i]->setDistance(INT_MAX);
        _nodes[i]->setBestPrev(NULL);
        _nodes[i]->setType(RRNodeType::BLANC);
    }

    _node->setDistance(0);
    addToQueue(queue, _node);

    while(!queue.empty())
    {
        unsigned int min_index = minDist(queue);
        RRNode *v = queue[min_index];
        queue.erase(queue.begin() + min_index);

        v->setType(RRNodeType::NOIR);

        if(node == *v)
        {
            invertRoute(v);
            return v;
        }

        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *w = v->getVoisin(MOVES[i]);
            if(w->getType() != RRNodeType::NOIR && w != RRNode::DEAD)
            {
                int dvw = 2;
                dvw = (line - w->getLine())*(line - w->getLine())+(column - w->getColumn())*(column - w->getColumn());
                if(w->getDistance() > v->getDistance() + dvw)
                {
                    w->setDistance(v->getDistance() + dvw);
                    w->setBestPrev(v);
                    w->setBestMove(MOVES[i]);
                }
                if(w->getType() != RRNodeType::GRIS)
                {
                    queue.push_back(w);
                    addToQueue(queue, w);
                }
            }
        }
        LogD("ici");
    }
    return NULL;
}

RRNode *RRGraph::findBestRoute(unsigned int line, unsigned int column)
{
    if(_nodes.size() == 0)
    {
        return NULL;
    }

    vector<RRNode *> queue(0);
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        _nodes[i]->setDistance(INT_MAX);
        _nodes[i]->setBestPrev(NULL);
        _nodes[i]->setType(RRNodeType::BLANC);
    }

    _node->setDistance(0);
    addToQueue(queue, _node);

    while(!queue.empty())
    {
        unsigned int min_index = minDist(queue);
        RRNode *v = queue[min_index];
        queue.erase(queue.begin() + min_index);

        v->setType(RRNodeType::NOIR);

        if(v->getLine() == line && v->getColumn() == column)
        {
            invertRoute(v);
            return v;
        }

        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *w = v->getVoisin(MOVES[i]);
            if(w->getType() != RRNodeType::NOIR && w != RRNode::DEAD)
            {
                int dvw = (line - w->getLine())*(line - w->getLine())+(column - w->getColumn())*(column - w->getColumn());
                if(w->getDistance() > v->getDistance() + dvw)
                {
                    w->setDistance(v->getDistance() + dvw);
                    w->setBestPrev(v);
                    w->setBestMove(MOVES[i]);
                }
                if(w->getType() != RRNodeType::GRIS)
                {
                    queue.push_back(w);
                    addToQueue(queue, w);
                }
            }
        }
    }
    return NULL;
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

unsigned int RRGraph::minDist(vector<RRNode *> &queue)
{
    unsigned int min = 0;
    for(unsigned int i = 0; i < queue.size(); i++)
    {
        if(queue[i]->getDistance() < queue[min]->getDistance() && queue[i] != RRNode::DEAD)
        {
            min = i;
        }
    }

    return min;
}

void RRGraph::addToQueue(std::vector<RRNode *> &queue, RRNode * node)
{
    if(node == RRNode::DEAD || node == NULL)
    {
        return;
    }

    queue.push_back(node);
    node->setType(RRNodeType::GRIS);
}

void RRGraph::invertRoute(RRNode *n)
{
    return;
    RRNode *node = n;
    RRNode *prev = NULL;

    while(node != _node)
    {
        prev = node->getBestPrev();
        prev->setBestNext(node);
        prev->setBestMove(node->getBestMove());
        node = prev;
    }
}
