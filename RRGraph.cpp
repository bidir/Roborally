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
#include "RRGraph.hpp"


using namespace std;


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRGraph
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
RRGraph::RRGraph():
    _board(NULL),
    _nodes()
{}

RRGraph::RRGraph(RRBoard *board):
    _board(board),
    _nodes()
{}

RRGraph::RRGraph(RRBoard &board):
    _board(&board),
    _nodes()
{}


/* ====================  Methods       ==================== */
void init();
void init(RRBoard *board);





