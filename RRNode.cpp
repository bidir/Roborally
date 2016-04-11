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
    _robot(),
    _voisins(NB_MOVES, NULL)
{}

RRNode::RRNode(RRRobot &robot):
    _visited(false),
    _robot(robot),
    _voisins(NB_MOVES, NULL)
{}

RRNode::~RRNode()
{
}

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

RRRobot RRNode::getRobot()
{
    return _robot;
}

unsigned int RRNode::getLine()
{
    return _robot.line;
}

unsigned int RRNode::getColumn()
{
    return _robot.column;
}

RRRobotStatus RRNode::getStatus()
{
    return _robot.status;
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


/* ====================  Methods       ==================== */
void RRNode::deleteVoisin()
{
    for(unsigned int i = 0; i < _voisins.size(); i++)
    {
        if(_voisins[i])
        {
            delete _voisins[i];
        }
    }
}
