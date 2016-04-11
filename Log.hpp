#ifndef __H__log_H__
#define __H__log_H__

/*
 * ================================ Header =====================================
 * Filename: Log.hpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 03/04/2016 16:58:09
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (Etudiant L3 Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */

#define LogE(x) Log::e(Exception(ERR_NOT_OK, x, __FILE__, __FUNCTION__, __LINE__))
#define LogW(x) Log::w(Exception(ERR_WAR   , x, __FILE__, __FUNCTION__, __LINE__))
#define LogI(x) Log::i(Exception(ERR_INF   , x, __FILE__, __FUNCTION__, __LINE__))
#define LogD(x) Log::d(Exception(ERR_OK    , x, __FILE__, __FUNCTION__, __LINE__))

#include <iostream>
#include <vector>
#include <map>
#include <string>

#include "Exceptions.hpp"


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....oooooooOOOO00000********°°°°°^^^^^°°°°°********000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
    Class: Log
    Description:
// |....----------------------------------------------------------------....| \\
// |....°°°°°°°OOOOOOOOO00000000000000000000000000000000OOOOOOOOO°°°°°°°....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */
class Log
{
    private:
        /* ====================  Data members  ==================== */
        static bool _log;

        static std::string _e;
        static std::string _w;
        static std::string _i;
        static std::string _d;

        static std::ostream *_d_out;
        static std::vector<std::ostream *> _out;

        /* ====================  Methods       ==================== */
    public:
        static void init();
        static void add(std::ostream &out);
        static void setDebugOut(std::ostream &out);
        static void stop();
        static void write(const std::string &msg);
        static void writeD(const std::string &msg);
        static void print(const std::string &label, const Exception &ex);
        static void print(const std::string &label, const std::string &msg);
        static void e(const std::string &msg);
        static void e(const Exception &ex);
        static void w(const std::string &msg);
        static void w(const Exception &ex);
        static void i(const std::string &msg);
        static void i(const Exception &ex);
        static void d(const std::string &msg);
        static void d(const Exception &ex);
};
/* -----************************  end of class  ************************----- \\
       Log
// -----****************************************************************----- */


#endif
