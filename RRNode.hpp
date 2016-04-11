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


typedef enum
{
    BLANC,
    NOIR,
    GRIS
} RRNodeType;


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
        bool _in_queue;
        bool _solved;

        int _distance;

        RRRobot _robot;
        RRRobotMove _best_move;

        RRNode *_best_prev;
        RRNodeType _type;

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
        bool isInQueue();
        bool isSolved();
        bool isDead();
        int getDistance();
        unsigned int getLine();
        unsigned int getColumn();
        RRRobotMove getBestMove();
        RRRobotStatus getStatus();
        RRRobot getRobot();
        RRNodeType getType();
        RRNode *getBestPrev();
        RRNode *getVoisin(RRRobotMove move);


        /* ====================  Mutators      ==================== */
        void setVisited(bool visited);
        void setInQueue(bool in_queue);
        void setSolved(bool solved);
        void setDistance(int dist);
        void setLine(unsigned int line);
        void setColumn(unsigned int column);
        void setStatus(RRRobotStatus status);
        void setBestMove(RRRobotMove move);
        void setType(RRNodeType type);
        void setBestPrev(RRNode *best);
        void setBestPrev(RRNode &best);
        void setVoisin(RRRobotMove move, RRNode *node);
        void setVoisin(RRRobotMove move, RRNode &node);


        /* ====================  Operators     ==================== */
        friend bool operator==(const RRNode &node1, const RRNode &node2);
        friend bool operator!=(const RRNode &node1, const RRNode &node2);


        /* ====================  Methods       ==================== */


    protected:

        /* ====================  Methods       ==================== */

};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */



#endif
