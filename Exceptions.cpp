/*
 * ================================== CPP ======================================
 * Filename: Exceptions.cpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 03/01/16 16:17:54
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (Etudiant Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */

#include <sstream>
#include "Exceptions.hpp"


using namespace std;


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....oooooooOOOO00000********°°°°°^^^^^°°°°°********000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
    Class: ExceptionInfo
// |....----------------------------------------------------------------....| \\
// |....°°°°°°°OOOOOOOOO00000000000000000000000000000000OOOOOOOOO°°°°°°°....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
ExceptionInfo::ExceptionInfo
    (
         const ExceptionInfo &info
    ) throw():
    ExceptionInfo(info.getFile(), info.getFunction(), info.getLine())
{}
ExceptionInfo::ExceptionInfo
    (
         const string &file,
         const string &function,
         int line
    ) throw():
    _line(line),
    _function(function),
    _file(file)
{}

ExceptionInfo::ExceptionInfo
    (
        const char *file,
        const char *function,
        int line
        ) throw():
    _line(line),
    _function(function),
    _file(file)
{}

ExceptionInfo::~ExceptionInfo() throw()
{}



/* ====================  Accessors     ==================== */
int ExceptionInfo::getLine()
{
    return _line;
}

const int &ExceptionInfo::getLine() const
{
    return _line;
}

string ExceptionInfo::getFile()
{
    return _file;
}

const string ExceptionInfo::getFile() const
{
    return _file;
}

string ExceptionInfo::getFunction()
{
    return _function;
}

const string ExceptionInfo::getFunction() const
{
    return _function;
}


/* ====================  Mutators      ==================== */
void ExceptionInfo::setLine(int line)
{
    _line = line;
}

void ExceptionInfo::setFile(string file)
{
    _file = file;
}

void ExceptionInfo::setFunction(string function)
{
    _function = function;
}
/* -----************************  end of class  ************************----- \\
       ExceptionInfo
// -----****************************************************************----- */



/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....oooooooOOOO00000********°°°°°^^^^^°°°°°********000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
    Class: Exception
// |....----------------------------------------------------------------....| \\
// |....°°°°°°°OOOOOOOOO00000000000000000000000000000000OOOOOOOOO°°°°°°°....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */

/* ====================  Constructors  ==================== */
Exception::Exception
    (
         int code,
         const string &msg,
         const ExceptionInfo &info
    ) throw():
    _code(code),
    _msg(msg),
    _info(info),
    _traces()
{}

Exception::Exception
    (
        int code,
        const string &msg,
        const string &file,
        const string &function,
        int line
    ) throw():
    _code(code),
    _msg(msg),
    _info(file, function, line),
    _traces()
{}

Exception::Exception
    (
        int code,
        const char *msg,
        const char *file,
        const char *function,
        int line
        ) throw():
    _code(code),
    _msg(msg),
    _info(file, function, line),
    _traces()
{}

Exception::~Exception() throw()
{}


/* ====================  Accessors     ==================== */
int Exception::getCode() const
{
    return _code;
}

ExceptionInfo &Exception::getTrace(unsigned int i)
{
    return _traces[i];
}

const ExceptionInfo &Exception::getTrace(unsigned int i) const
{
    return _traces[i];
}

vector<ExceptionInfo> &Exception::getTraces()
{
    return _traces;
}

const vector<ExceptionInfo> &Exception::getTraces() const
{
    return _traces;
}

const string &Exception::getMessage() const
{
    return _msg;
}

ExceptionInfo &Exception::getInfo()
{
    return _info;
}

const ExceptionInfo &Exception::getInfo() const
{
    return _info;
}



/* ====================  Mutators      ==================== */


/* ====================  Methods       ==================== */
const char* Exception::what() const throw()
{
    ostringstream oss;
    oss << "[" << _info.getFile() << ":" << _info.getFunction() << "|" << _info.getLine() << "] " << _msg;
    return oss.str().c_str();
}

void Exception::addInfo(const ExceptionInfo &info)
{
    _traces.push_back(info);
}
/* -----************************  end of class  ************************----- \\
       Exception
// -----****************************************************************----- */



