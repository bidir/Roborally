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
#include "Log.hpp"
#include "main.hpp"


using namespace std;

ofstream log_file;
ofstream d_file;

int main(int argc, char *argv[])
{
    log_file.open("/tmp/roborally.log", ofstream::out|ofstream::app);
    d_file.open("/tmp/roborally.debug", ofstream::out |ofstream::app);

    Log::add(log_file);
    Log::setDebugOut(d_file);
    try
    {
        Log::init();

        // ************************
        example();
        // ************************
        end();
        return 0; 
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

void move_print(RRRobotMove move)
{
    static const char* translations[7] =
    {
        "moving forward 1 tile",
        "moving forward 2 tiles",
        "moving forward 3 tiles",
        "moving backward 1 tile",
        "rotating left",
        "rotating right",
        "u turning"
    } ;

    std::printf("%s\n", translations[move]) ;
}

void robot_print(const RRRobot& robot)
{
    static const char* translations[5] =
    {
        "east",
        "north",
        "west",
        "south",
        "dead"
    } ;

    std::printf(
            "->robot is at (%d, %d) looking %s\n", 
            robot.line,
            robot.column,
            translations[robot.status]
            ) ;
}

void example()
{
    try
    {
        //rr_board_init(board, "board.txt") ;
        RRGraph graph("board.txt");

        RRRobot robot ;
        robot.line = graph.getBoard().tiles[0].line ;
        robot.column = graph.getBoard().tiles[0].column ;
        robot.status = RR_ROBOT_N ;

        graph.init(robot);

        RRRobot prev_robot;
        robot_cpy(robot, prev_robot) ;

        const RRRobotMove moves[13] =
        {
            RR_TURN_RIGHT,
            RR_MOVE_FORWARD_2,
            RR_MOVE_FORWARD_1,
            RR_U_TURN,
            RR_MOVE_FORWARD_1,
            RR_TURN_RIGHT,
            RR_MOVE_FORWARD_1,
            RR_MOVE_BACKWARD_1,
            RR_MOVE_FORWARD_2,
            RR_TURN_LEFT,
            RR_MOVE_FORWARD_3,
            RR_MOVE_BACKWARD_1,
            RR_MOVE_FORWARD_2
        } ;

        RRNode *node = graph.findBestRoute(4, 0);
        RRNode *next = graph.getNode();

        while(next != node)
        {
            move_print(next->getBestMove());
            robot_print(next->getRobot());
            next = next->getBestNext();
        }

        cout << "======================================" << endl;

        robot_print(robot) ;

        for(unsigned int i = 0; i < 13; ++i)
        {
            move_print(moves[i]) ;
            robot_cpy(graph.getRobot(), prev_robot) ;
            graph.move(moves[i]) ;
            robot_print(graph.getRobot()) ;
        }
    }
    catch(Exception &ex)
    {
        AddTrace(ex);
        throw ex;
    }
}
