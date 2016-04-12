/*
 * ================================== CPP ======================================
 * Filename: main.cpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 10/04/2016 19:32:24
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (idirux), idirux.ouchen@gmail.com
 * =============================================================================
 */


#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <time.h>
#include <string>

#include "Log.hpp"
#include "main.hpp"


using namespace std;


ofstream log_file;
ofstream d_file;


int main(int argc, char *argv[])
{
    srand(time(NULL));
    log_file.open("/tmp/roborally.log", ofstream::out|ofstream::app);
    d_file.open("/tmp/roborally.debug", ofstream::out |ofstream::app);

    Log::add(log_file);
    Log::setDebugOut(d_file);

    try
    {
        Log::init();

        int max = 1;
        string filename("");
        if(argc == 2)
        {
            if(string(argv[1]) == "-b")
            {
                max = 10;
            }
            else
            {
                filename = string(argv[1]);
            }
        }
        else if(argc > 2)
        {
            if(string(argv[1]) == "-b")
            {
                max = 10;
                filename = string(argv[2]);
            }
            else
            {
                filename = string(argv[1]);
            }
        }

        for(int i = 0; i < max; i++)
        {
            if(filename == "")
            {
                // ************************
                testBestRoute("boards/board.txt");
                testBestRoute("boards/board1.txt");
                testLimitedMoves("boards/board.txt");
                testLimitedMoves("boards/board1.txt");
                // ************************
            }
            else
            {
                testBestRoute(filename);
                testLimitedMoves(filename);
            }
        }
             

        end(); return 0; 
    }
    catch(Exception &e)
    {
        AddTrace(e);
        Log::e(e);
        end();
        return e.getCode();
    }
    catch(const exception &e)
    {
        Log::e(e.what());
        end();
        return -1;
    }

    cerr << "ERREUR: il faut donner l'URL et un nom de dossier." << endl;
    end();
    return EXIT_FAILURE;
}

void end()
{
    cout << endl;
    log_file.close();
    d_file.close();
}

void robot_cpy(const RRRobot& from, RRRobot& to)
{
    std::memcpy(&to, &from, sizeof(RRRobot)) ;
}

void testBestRoute(const string &filename)
{
    cout << endl << endl
         << "*********** TEST BEST ROUTE **********" << endl
         << "-----| file: " << filename              << endl
         << "**************************************" << endl;

    RRGraph *graph = NULL;
    try
    {
        graph = new RRGraph(filename);
        RRRobot robot ;
        robot.line = graph->getBoard().tiles[0].line ;
        robot.column = graph->getBoard().tiles[0].column ;
        robot.status = RR_ROBOT_N ;

        graph->init(robot);

        RRRobot prev_robot;
        robot_cpy(robot, prev_robot) ;

        findBestRoute(graph, rand()%graph->getBoard().width, rand()%graph->getBoard().height);

        cout << "=========================================" << endl;
    }
    catch(Exception &ex)
    {
        delete graph;
        AddTrace(ex);
        throw ex;
    }
    delete graph;
}

void findBestRoute(RRGraph *graph, unsigned int l, unsigned int c)
{
    try
    {
        cout << "================= " << l << "|" << c << " ===================" << endl;
        RRRobot robot = graph->getNode()->getRobot();
        cout << "Aller de (" << robot.line << "," << robot.column
             << ") a (" << l << "," << c << "):" << endl;
        RRNode *node = graph->findBestRoute(l, c);
        RRNode *next = graph->getNode();

        if(node != NULL)
        {
            unsigned int count(0);
            while(next != node && node != NULL)
            {
                cout << next->getRobot() << " -> " << next->getBestMove() << endl;
                next = next->getBestNext();
                count++;
            }
            cout << next->getRobot() << endl;
            cout << "-----------------------" << endl
                 << "Atteint en " << count << " coups" << endl
                 << "-----------------------" << endl;
        }
        else
        {
            cout << "Impossible" << endl;
        }
    }
    catch(Exception &ex)
    {
        Log::e(ex);
        cerr << ex.getMessage() << endl;
    }
}

void testLimitedMoves(const std::string &filename)
{

    cout << endl << endl
         << "********* TEST BEST LIMITED **********" << endl
         << "-----| file: " << filename              << endl
         << "**************************************" << endl;

    RRGraph *graph = NULL;
    try
    {
        graph = new RRGraph(filename);

        RRRobot robot ;
        robot.line = graph->getBoard().tiles[0].line ;
        robot.column = graph->getBoard().tiles[0].column ;
        robot.status = RR_ROBOT_N ;

        graph->init(robot);
        vector<RRRobotMove> moves = getPermMoves(9);
        graph->setPermMoves(moves);
        graph->setLimitedMoves(true);

        RRRobot prev_robot;
        robot_cpy(robot, prev_robot) ;

        printMoves(moves);
        findBestRoute(graph, rand()%graph->getBoard().width, rand()%graph->getBoard().height);
        printCMoves(moves);

        cout << "=========================================" << endl;
    }
    catch(Exception &ex)
    {
        delete graph;
        AddTrace(ex);
        throw ex;
    }
    delete graph;
}

vector<RRRobotMove> getPermMoves(unsigned int n)
{
    vector<RRRobotMove> all_moves(84);
    int index = 0;
    for(unsigned int i = 0; i < 18; i++)
    {
        all_moves[index] = RR_MOVE_FORWARD_1;
        index++;
    }
    for(unsigned int i = 0; i < 12; i++)
    {
        all_moves[index] = RR_MOVE_FORWARD_2;
        index++;
    }
    for(unsigned int i = 0; i < 6; i++)
    {
        all_moves[index] = RR_MOVE_FORWARD_3;
        index++;
    }
    for(unsigned int i = 0; i < 6; i++)
    {
        all_moves[index] = RR_MOVE_BACKWARD_1;
        index++;
    }
    for(unsigned int i = 0; i < 18; i++)
    {
        all_moves[index] = RR_TURN_RIGHT;
        index++;
    }
    for(unsigned int i = 0; i < 18; i++)
    {
        all_moves[index] = RR_TURN_LEFT;
        index++;
    }
    for(unsigned int i = 0; i < 6; i++)
    {
        all_moves[index] = RR_U_TURN;
        index++;
    }

    vector<RRRobotMove> moves(n);
    for(unsigned int i = 0; i < n; i++)
    {
        moves[i] = all_moves[rand()%all_moves.size()];
    }
    return moves;
}

void printMoves(std::vector<RRRobotMove> &moves)
{
    cout << "les movements permis sont: ";
    for(unsigned int i = 0; i < moves.size(); i++)
    {
        cout << moves[i];
        if(i != moves.size() - 1)
        {
            cout << ", ";
        }
    }
    cout << endl;

}

void printCMoves(std::vector<RRRobotMove> &moves)
{
    cout << endl << "les movements permis sont: ";
    for(unsigned int i = 0; i < moves.size(); i++)
    {
        cout << RRNode::C_MOVES_NAMES[moves[i]];
        if(i != moves.size() - 1)
        {
            cout << ", ";
        }
    }
    cout << endl;

}

std::ostream& operator<< (std::ostream &out, const RRRobot &robot)
{
    out << "Le robot est en (" << robot.line << "," << robot.column << ") tourne vers " << RRNode::RSTATUS[robot.status];
    return out;
}

std::ostream& operator<< (std::ostream &out, const RRRobotMove &move)
{
    out << RRNode::MOVES_NAMES[move];
    return out;
}
