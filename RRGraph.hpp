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
        bool _limited_moves;
        RRNode *_node;
        RRBoard _board;
        std::vector<RRNode *> _nodes;
        std::vector<RRRobotMove> _perm_moves;
        std::vector<bool> _perm_moves_use;


    public:
        /* ====================  Constructors  ==================== */
        RRGraph();
        RRGraph(const std::string &filename);
        ~RRGraph();


        /* ====================  Accessors     ==================== */
        bool getLimitedMoves();
        bool isDead();
        RRNode *getNode();
        RRRobot getRobot();
        RRBoard getBoard();
        RRRobotMove getPermMove(int unsigned n);
        const std::vector<RRRobotMove> &getPermMoves() const;


        /* ====================  Mutators      ==================== */
        void setLimitedMoves(bool lim);
        void setPermMoves(RRRobotMove *moves, unsigned int size);
        void setPermMoves(std::vector<RRRobotMove> &moves);


        /* ====================  Operators     ==================== */


        /* ====================  Methods       ==================== */
        void init(RRRobot &robot);
        void init(const std::string filename, RRRobot &robot);
        int isNodeExists(RRNode &node);
        void move(RRRobotMove move);
        RRNode *findBestRoute(unsigned int line, unsigned int column);
        RRNode *findBestRoute(RRRobot &robot);
        RRTile getTile(unsigned int l, unsigned int c);


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
};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */
#endif
