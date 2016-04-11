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


#include "main.hpp"
#include <iostream>
#include <fstream>
#include "RRGraph.hpp"
#include "Log.hpp"


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
        RRGraph *graph = new RRGraph("board.txt");
        RRRobot robot;
        robot.line = 0;
        robot.column = 0;
        robot.status  = RRRobotStatus::RR_ROBOT_E;
        graph->init(robot);
        delete graph;

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
