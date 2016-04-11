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
    _board(),
    _nodes()
{}

RRGraph::RRGraph(const string &filename):
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
        _nodes[i]->deleteVoisin();
        if(_nodes[i])
        {
            delete _nodes[i];
        }
    }
}


/* ====================  Methods       ==================== */
void RRGraph::init(RRRobot &robot)
{
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
    rr_node->setVisited(true);
    init();
}

void RRGraph::init()
{
    for(unsigned int n = 0; n < _nodes.size(); n++)
    {
        RRNode *node = _nodes[n];
        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *voisin = node->getVoisin(MOVES[i]);
            if(voisin != RRNode::DEAD && !voisin->isVisited())
            {
                for(int m = 0; m < NB_MOVES && voisin != RRNode::DEAD; m++)
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
                voisin->setVisited(true);
            }
        }
        LogD(toString(_nodes.size()));
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




