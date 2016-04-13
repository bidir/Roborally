/*
 * ================================== CPP ======================================
 * Filename: tools.cpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 02/22/16 16:48:44
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (Etudiant Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */

#include <algorithm>
#include <stdio.h>
#include <string.h>
#include <ctime>
#include <sstream>

#include "tools.hpp"
#include "Log.hpp"

using namespace std;


namespace tools
{
    std::string toString(int val)
    {
        stringstream ss;
        ss << val;
        return ss.str();
    }

    string getCurrentTime()
    {
        time_t result = std::time(NULL);
        char *time = asctime(localtime(&result));
        char *pch = strtok (time, " :");
        pch = strtok (NULL, " :");
        string MM(pch);
        pch = strtok (NULL, " :");
        string dd(pch);
        pch = strtok (NULL, " :");
        string hh(pch);
        pch = strtok (NULL, " :");
        string mm(pch);
        pch = strtok (NULL, " :");
        string ss(pch);
        pch = strtok (NULL, " :");
        string yy(pch);
        yy[yy.size()-1] = '\0';
        return yy + "/" + MM + "/" + dd + " " + hh + ":" + mm + ":" + ss;
    }
}
