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


#define NB_MOVES 7

#include <vector>

#include "board.hpp"



const RRRobotMove MOVES[NB_MOVES] =
{
    RR_MOVE_FORWARD_1,
    RR_MOVE_FORWARD_2,
    RR_MOVE_FORWARD_3,
    RR_MOVE_BACKWARD_1,
    RR_TURN_LEFT,
    RR_TURN_RIGHT,
    RR_U_TURN
};


/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRNode
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */
class RRNode
{
        /* ====================  Data members  ==================== */
    public:
        static RRNode *DEAD;

    private:
        bool _visited;
        RRRobot _robot;

        std::vector<RRNode *> _voisins;


    public:

        /* ====================  Constructors  ==================== */
        RRNode();
        RRNode(RRRobot &robot);
        ~RRNode();

        /*RRNode();
        RRNode(unsigned int line, unsigned int column);
        RRNode(unsigned int line, unsigned int column, RRRobotStatus status);
        ~RRNode();*/


        /* ====================  Accessors     ==================== */
        bool isVisited();
        RRRobot getRobot();
        unsigned int getLine();
        unsigned int getColumn();
        RRRobotStatus getStatus();
        RRNode *getVoisin(RRRobotMove move);


        /* ====================  Mutators      ==================== */
        void setVisited(bool visited);
        void setLine(unsigned int line);
        void setColumn(unsigned int column);
        void setStatus(RRRobotStatus status);
        void setVoisin(RRRobotMove move, RRNode *node);
        void setVoisin(RRRobotMove move, RRNode &node);


        /* ====================  Operators     ==================== */
        friend bool operator==(const RRNode &node1, const RRNode &node2);
        friend bool operator!=(const RRNode &node1, const RRNode &node2);


        /* ====================  Methods       ==================== */
        void moveRobot(RRRobot &robot, RRRobotMove move);
        void deleteVoisin();


    protected:

        /* ====================  Methods       ==================== */

};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */



#endif
