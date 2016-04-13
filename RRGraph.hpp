#ifndef __H_RRGRAPH_H__
#define __H_RRGRAPH_H__


/*
 * ================================ Header =====================================
 * Filename: RRGraph.hpp
 *
 * Description: none 
 *
 * Version: 1.0
 * Created: 10/04/2016 23:46:23
 * Revision: none
 *
 * Commants: none
 *
 * Compiler: gcc
 *
 * Author: Idir BOUCHENEB (idirux), idirux.ouchen@gmail.com
 * =============================================================================
 */


#include <string>
#include "RRNode.hpp"



/* ////////////////////////////////////|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\
// |....oooooooOOOO000000000000000000000000000000000000000000OOOOooooooo....| \\
// |....---------------|             class             |----------------....| \\
Class: RRGraph
Description:  
// |....----------------------------------------------------------------....| \\
// \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|///////////////////////////////////// */
class RRGraph
{
        /* ====================  Data members  ==================== */
    private:
        bool _limited_moves; //Indique si utiliser mvt limités
        RRNode *_node;//Le noeud initial du robot.
        RRBoard _board; //Le plateau
        std::vector<RRNode *> _nodes;//Tous les noeuds créés.
        std::vector<RRRobotMove> _perm_moves; //Les mvt permis
        std::vector<bool> _perm_moves_use;//vrai si mvt utilise


    public:
        /* ====================  Constructors  ==================== */
        RRGraph();
        RRGraph(const char *filename); //lit dans filename et init _board
        ~RRGraph();


        /* ====================  Accessors     ==================== */
        bool isLimitedMoves(); //
        bool isDead();
        RRNode *getNode();
        RRRobot getRobot();
        RRBoard getBoard();
        RRRobotMove getPermMove(int unsigned n);
        const std::vector<RRRobotMove> &getPermMoves() const;


        /* ====================  Mutators      ==================== */
        void limiteMoves(bool lim);
        void limiteMoves(std::vector<RRRobotMove> &moves);
        void setPermMoves(RRRobotMove *moves, const unsigned int &size);
        void setPermMoves(std::vector<RRRobotMove> &moves);
        void setPermMoves(std::vector<RRRobotMove> *moves);


        /* ====================  Operators     ==================== */


        /* ====================  Methods       ==================== */
        void init(RRRobot &robot);
        void init(const char *filename, RRRobot &robot);
        int isNodeExists(RRNode &node);
        void move(RRRobotMove move);
        RRNode *findBestRoute(const unsigned int &l, const unsigned int &c);
        RRNode *findBestRoute(RRRobot &robot);
        const RRTile &getTile(const unsigned int &l, const unsigned int &c);


    protected:
        /* ====================  Methods       ==================== */
        RRNode *findBestRoute(RRRobot &robot, bool compareOrientation);
        void init();
        unsigned int minDist(std::vector<RRNode *> &queue);
        void addToQueue(std::vector<RRNode *> &queue, RRNode * node);
        void invertRoute(RRNode *node);
        void usePermMove(const RRRobotMove &move);
        bool isMovePermitted(const RRRobotMove &move);
        void resetUsedMoves();
        void clearNodes();
        void destroy();
};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */
#endif
