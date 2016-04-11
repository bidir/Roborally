/*
 * ================================== CPP ======================================
 * Filename: RRNode.cpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 06/04/2016 15:15:50
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: g++
 *
 * Author: Idir BOUCHENEB (Etudiant L3 Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */


#include <iostream>
#include <limits.h>

#include "Log.hpp"
#include "RRNode.hpp"


using namespace std;


RRNode *RRNode::DEAD = new RRNode();


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRNode
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
RRNode::RRNode():
    _visited(false),
    _in_queue(false),
    _solved(false),
    _distance(INT_MAX),
    _robot(),
    _best_move(),
    _best_prev(NULL),
    _voisins(NB_MOVES, NULL)
{
    _robot.line = 0;
    _robot.column = 0;
    _robot.status = RRRobotStatus::RR_ROBOT_DEAD;
}

RRNode::RRNode(RRRobot &robot):
    RRNode()
{
    _robot = robot;
}

RRNode::~RRNode()
{}

/*RRNode::RRNode(unsigned int line, unsigned int column):
    RRNode(line, column, RRRobotStatus::RR_ROBOT_E)
{}

RRNode::RRNode(unsigned int line, unsigned int column, RRRobotStatus status):
    _line(line),
    _column(column),
    _status(status),
    _voisins(7, NULL)
{
    _tile = RRTileType::RR_TILE_NONE;
}  */


/* ====================  Accessors     ==================== */
bool RRNode::isVisited()
{
    return _visited;
}

bool RRNode::isInQueue()
{
    return _in_queue;
}

bool RRNode::isSolved()
{
    return _solved;
}

int RRNode::getDistance()
{
    return _distance;
}

bool RRNode::isDead()
{
    return _robot.status == RRRobotStatus::RR_ROBOT_DEAD;
}

RRRobot RRNode::getRobot()
{
    return _robot;
}

RRNodeType RRNode::getType()
{
    return _type;
}

unsigned int RRNode::getLine()
{
    return _robot.line;
}

unsigned int RRNode::getColumn()
{
    return _robot.column;
}

RRRobotMove RRNode::getBestMove()
{
    return _best_move;
}

RRRobotStatus RRNode::getStatus()
{
    return _robot.status;
}

RRNode *RRNode::getBestPrev()
{
    return _best_prev;
}

RRNode *RRNode::getVoisin(RRRobotMove move)
{
    return _voisins[move];
}


/* ====================  Mutators      ==================== */
void RRNode::setVisited(bool visited)
{
    _visited = visited;
}

void RRNode::setInQueue(bool in_queue)
{
    _in_queue = in_queue;
}

void RRNode::setSolved(bool solved)
{
    _visited = solved;
}

void RRNode::setDistance(int dist)
{
    _distance = dist;
}

void RRNode::setLine(unsigned int line)
{
    _robot.line = line;
}

void RRNode::setColumn(unsigned int column)
{
    _robot.column = column;
}

void RRNode::setStatus(RRRobotStatus status)
{
    _robot.status = status;
}

void RRNode::setBestMove(RRRobotMove move)
{
    _best_move = move;
}

void RRNode::setType(RRNodeType type)
{
    _type = type;
}

void RRNode::setBestPrev(RRNode *prev)
{
    _best_prev = prev;
}

void RRNode::setBestPrev(RRNode &prev)
{
    setBestPrev(&prev);
}

void RRNode::setVoisin(RRRobotMove move, RRNode *node)
{
    _voisins[move] = node;
}

void RRNode::setVoisin(RRRobotMove move, RRNode &node)
{
    _voisins[move] = &node;
}


/* ====================  Operators     ==================== */
bool operator==(const RRNode &node1, const RRNode &node2)
{
    return node1._robot.line == node2._robot.line && node1._robot.column == node2._robot.column && node1._robot.status == node2._robot.status;
}

bool operator!=(const RRNode &node1, const RRNode &node2)
{
    return node1._robot.line != node2._robot.line || node1._robot.column != node2._robot.column || node1._robot.status != node2._robot.status;
}
