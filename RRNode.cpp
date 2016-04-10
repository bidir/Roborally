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



/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRNode
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
RRNode::RRNode():
    _line(0),
    _column(0),
    _status(RRRobotStatus::RR_ROBOT_E),
    _voisins(7, NULL)
{}

RRNode::RRNode(unsigned int line, unsigned int column):
    _line(line),
    _column(column),
    _status(RRRobotStatus::RR_ROBOT_E),
    _voisins(7, NULL)
{}

RRNode::RRNode(unsigned int line, unsigned int column, RRRobotStatus status):
    _line(line),
    _column(column),
    _status(status),
    _voisins(7, NULL)
{}



