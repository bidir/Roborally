#ifndef __H_TOOLS_H__
#define __H_TOOLS_H__

/*
 * ================================ Header =====================================
 * Filename: tools.hpp
 *
 * Description: Sont définis dans ce fichier:
 *  ->Les classes:
 *      |-> Log
 *
 * Version: 1.0
 * Created: 02/22/16 16:48:55
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (Etudiant Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */



#include <iostream>
#include <string>

#include "Exceptions.hpp"


namespace tools
{
    void toUpper(std::string *str);
    std::string toUpper(std::string str);
    std::string getCurrentTime();
    std::istream &getline(std::istream &in, std::string &line);
    std::string removeSpaces(const std::string &str);
}

#endif
