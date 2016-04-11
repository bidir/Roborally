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
#include <regex>

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

    void toUpper(string *str)
    {
        transform(str->begin(), str->end(), str->begin(), ::toupper);
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

    string toUpper(string str)
    {
        transform(str.begin(), str.end(), str.begin(), ::toupper);
        return str;
    }

    istream &getline(istream &in, string &line)
    {
        if(
                std::getline(in, line) &&
                line.find("\r") != string::npos &&
                line.size() > 1 &&
                line.substr(line.size() - 1) == "\r"
          )
        {
            line = line.substr(0, line.size() - 1);
        }


        return in;
    }

    string removeSpaces(const string &str)
    {
        regex e("\\s");
        return regex_replace(str, e, "");
    }
}
