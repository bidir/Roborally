#ifndef __H_RRNODE_H__
#define __H_RRNODE_H__


/*
 * ================================ Header =====================================
 * Filename: RRNode.hpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 06/04/2016 15:15:56
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: g++
 *
 * Author: Idir BOUCHENEB (Etudiant L3 Info), idir.boucheneb@etu.univ-lyon1.fr
 * =============================================================================
 */


#include <vector>

#include "board.hpp"


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRNode
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */
class RRNode
{
    private:
        /* ====================  Data members  ==================== */
        unsigned int _line;
        unsigned int _column;
        RRRobotStatus _status;

        std::vector<RRNode *> _voisins;


    public:

        /* ====================  Constructors  ==================== */
        RRNode();
        RRNode(unsigned int line, unsigned int column);
        RRNode(unsigned int line, unsigned int column, RRRobotStatus status);


        /* ====================  Accessors     ==================== */



        /* ====================  Mutators      ==================== */



        /* ====================  Operators     ==================== */



        /* ====================  Methods       ==================== */



    protected:

        /* ====================  Methods       ==================== */

};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */



#endif
