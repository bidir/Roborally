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
    _limited_moves(false),
    _node(NULL),
    _board(),
    _nodes(),
    _perm_moves(),
    _perm_moves_use()
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
    clearNodes();
    rr_board_destroy(_board);
}


/* ====================  Accessors     ==================== */
bool RRGraph::getLimitedMoves()
{
    return _limited_moves;
}

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

RRTile RRGraph::getTile(unsigned int l, unsigned int c)
{
    return _board.tiles[l*_board.width + c*_board.height];
}

RRRobotMove RRGraph::getPermMove(unsigned int n)
{
    return _perm_moves[n];
}

const vector<RRRobotMove> &RRGraph::getPermMoves() const
{
    return _perm_moves;
}


/* ====================  Mutators      ==================== */
void RRGraph::setLimitedMoves(bool lim)
{
    _limited_moves = lim;
}

void RRGraph::setPermMoves(RRRobotMove *moves, unsigned int size)
{
    _perm_moves.clear();
    _perm_moves_use.clear();
    _perm_moves.resize(size);
    _perm_moves_use.resize(size);
    for(unsigned int i = 0; i < size; i++)
    {
        _perm_moves[i] = moves[i];
        _perm_moves_use[i] = false;
    }
}

void RRGraph::setPermMoves(vector<RRRobotMove> &moves)
{
    setPermMoves(moves.data(), moves.size());
}


/* ====================  Methods       ==================== */
void RRGraph::init(RRRobot &robot)
{
    clearNodes();
    RRNode *rr_node = new RRNode(robot);
    for(int m = 0; m < NB_MOVES; m++)
    {
        RRRobot bot = robot;
        rr_board_play(_board, bot, RRNode::MOVES[m]);
        if(bot.status == RRRobotStatus::RR_ROBOT_DEAD)
        {
            rr_node->setVoisin(RRNode::MOVES[m], &RRNode::DEAD);
        }
        else
        {
            RRNode *rr_node2 = new RRNode(bot);
            int index = isNodeExists(*rr_node2);
            if(index != -1)
            {
                rr_node->setVoisin(RRNode::MOVES[m], _nodes[index]);
            }
            else
            {
                rr_node->setVoisin(RRNode::MOVES[m], rr_node2);
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
    if(_node == &RRNode::DEAD)
    {
        return;
    }
    _node = _node->getVoisin(move);
}

RRNode *RRGraph::findBestRoute(RRRobot &robot)
{
    try
    {
        return findBestRoute(robot, true);
    }
    catch(Exception &ex)
    {
        AddTrace(ex);
        throw ex;
    }
}

RRNode *RRGraph::findBestRoute(unsigned int line, unsigned int column)
{
    try
    {
        RRRobot robot;
        robot.line = line;
        robot.column = column;
        return findBestRoute(robot, false);
    }
    catch(Exception &ex)
    {
        AddTrace(ex);
        throw ex;
    }

}

RRNode *RRGraph::findBestRoute(RRRobot &robot, bool comp)
{
    if(_nodes.size() == 0)
    {
        return NULL;
    }

    if(robot.line >= _board.width || robot.column >= _board.height)
    {
        throw GenEx(ExBoard, "La case (" + toString(robot.line) + "," + toString(robot.column) + ") est en dehors du plateau");
    }

    if(getTile(robot.line, robot.column).type == RRTileType::RR_TILE_NONE)
    {
        throw GenEx(ExBoard, "La case (" + toString(robot.line) + "," + toString(robot.column) + ") est bloquee");
    }

    resetUsedMoves();

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

    unsigned int index = 0;
    while(!queue.empty() && index < _nodes.size())
    {
        unsigned int min_index = minDist(queue);
        RRNode *v = queue[min_index];
        queue.erase(queue.begin() + min_index);

        v->setType(RRNodeType::NOIR);
        if(v != _node)
        {
            usePermMove(v->getBestMove());
        }

        if(comp && *v == node)
        {
            invertRoute(v);
            return v;
        }
        else if(line == v->getLine() && column == v->getColumn())
        {
            invertRoute(v);
            return v;
        }

        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *w = v->getVoisin(RRNode::MOVES[i]);
            if(w->getType() != RRNodeType::NOIR && w != &RRNode::DEAD && isMovePermitted(RRNode::MOVES[i]))
            {
                int dvw = 1;
                //int dvw = (line - w->getLine())*(line - w->getLine())+(column - w->getColumn())*(column - w->getColumn());
                if(w->getDistance() > v->getDistance() + dvw)
                {
                    w->setDistance(v->getDistance() + dvw);
                    w->setBestPrev(v);
                    w->setBestMove(RRNode::MOVES[i]);
                }
                if(w->getType() != RRNodeType::GRIS)
                {
                    addToQueue(queue, w);
                }
            }
        }
        index++;
    }
    return NULL;
}

void RRGraph::usePermMove(const RRRobotMove &move)
{
    if(!_limited_moves || _perm_moves.size() == 0)
    {
        for(unsigned int i = 0; i < _perm_moves.size(); i++)
        {
            if(_perm_moves[i] == move)
            {
                _perm_moves_use[i] = true;
            }
        }
    }

}

bool RRGraph::isMovePermitted(const RRRobotMove &move)
{
    if(!_limited_moves || _perm_moves.size() == 0)
    {
        return true;
    }

    for(unsigned int i = 0; i < _perm_moves.size(); i++)
    {
        if(_perm_moves[i] == move && !_perm_moves_use[i])
        {
            return true;
        }
    }
    return false;
}

void RRGraph::init()
{
    for(unsigned int n = 0; n < _nodes.size(); n++)
    {
        RRNode *node = _nodes[n];
        for(int i = 0; i < NB_MOVES; i++)
        {
            RRNode *voisin = node->getVoisin(RRNode::MOVES[i]);
            //Si voisin n'est pas case morte et si il n'a pas deja ete traite
            if(voisin != &RRNode::DEAD && voisin->getVoisin(RRNode::MOVES[0]) == NULL)
            {
                for(int m = 0; m < NB_MOVES; m++)
                {
                    RRRobot bot = voisin->getRobot();
                    rr_board_play(_board, bot, RRNode::MOVES[m]);
                    if(bot.status == RRRobotStatus::RR_ROBOT_DEAD)
                    {
                        voisin->setVoisin(RRNode::MOVES[m], &RRNode::DEAD);
                    }
                    else
                    {
                        RRNode *rr_node2 = new RRNode(bot);
                        int index = isNodeExists(*rr_node2);
                        if(index != -1)
                        {
                            voisin->setVoisin(RRNode::MOVES[m], _nodes[index]);
                            delete rr_node2;
                        }
                        else
                        {
                            voisin->setVoisin(RRNode::MOVES[m], rr_node2);
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
        if(queue[i]->getDistance() < queue[min]->getDistance() && queue[i] != &RRNode::DEAD)
        {
            min = i;
        }
    }

    return min;
}

void RRGraph::addToQueue(std::vector<RRNode *> &queue, RRNode * node)
{
    if(node == &RRNode::DEAD || node == NULL)
    {
        return;
    }

    queue.push_back(node);
    node->setType(RRNodeType::GRIS);
}

void RRGraph::invertRoute(RRNode *n)
{
    if(n == _node)
    {
        return;
    }
    RRNode *node = n;
    RRNode *prev = NULL;

    while(node != _node)
    {
        prev = node->getBestPrev();
        prev->setBestNext(node);
        node = prev;
    }

    node = _node;
    RRNode *next = NULL;
    while(node != n)
    {
        next = node->getBestNext();
        node->setBestMove(next->getBestMove());
        node = next;
    }

}

void RRGraph::resetUsedMoves()
{
    if(_limited_moves)
    {
        for(unsigned int i = 0; i < _perm_moves_use.size(); i++)
        {
            _perm_moves_use[i] = false;
        }
    }
}

void RRGraph::clearNodes()
{
    for(unsigned int i = 0; i < _nodes.size(); i++)
    {
        if(_nodes[i] != &RRNode::DEAD)
        {
            delete _nodes[i];
        }
    }
    _nodes.clear();
}
