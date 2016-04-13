#ifndef __H_MAIN_H__
#define __H_MAIN_H__


/*
 * ================================ Header =====================================
 * Filename: main.hpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 10/04/2016 21:42:43
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

int main(int argc, char *argv[]);
void end();
void testBestRoute(const char *filename, unsigned int numb);
void findBestRoute(RRGraph *graph, const unsigned int &l, const unsigned int &c);
void testLimitedMoves(const char *filename, unsigned int numb);
void findByLimitedMoves(const char *filename);
std::vector<RRRobotMove> getPermMoves(unsigned int n);
void printMoves(std::vector<RRRobotMove> &moves);
void printCMoves(std::vector<RRRobotMove> &moves);

std::ostream& operator<< (std::ostream &out, const RRRobot &robot);
std::ostream& operator<< (std::ostream &out, const RRRobotMove &move);

#endif
