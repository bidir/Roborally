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
        RRRobot _robot;

        std::vector<RRNode *> _voisins;


    public:

        /* ====================  Constructors  ==================== */
        RRNode(RRRobot &robot);

        /*RRNode();
        RRNode(unsigned int line, unsigned int column);
        RRNode(unsigned int line, unsigned int column, RRRobotStatus status);
        ~RRNode();*/


        /* ====================  Accessors     ==================== */
        RRRobot getRobot();
        unsigned int getLine();
        unsigned int getColumn();
        RRRobotStatus getStatus();
        RRNode &getVoisin(RRRobotMove move);


        /* ====================  Mutators      ==================== */
        void setLine(unsigned int line);
        void setColumn(unsigned int column);
        void setStatus(RRRobotStatus status);
        void setVoisin(RRRobotMove move, RRNode *node);
        void setVoisin(RRRobotMove move, RRNode &node);


        /* ====================  Operators     ==================== */



        /* ====================  Methods       ==================== */
        void moveRobot(RRRobot &robot, RRRobotMove move);


    protected:

        /* ====================  Methods       ==================== */

};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */



#endif
