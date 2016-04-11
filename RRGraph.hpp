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
        RRNode *_node;
        RRBoard _board;
        std::vector<RRNode *> _nodes;
        std::vector<std::vector<RRNode *> *> *_shorter_nodes;


    public:
        /* ====================  Constructors  ==================== */
        RRGraph();
        RRGraph(const std::string &filename);
        ~RRGraph();


        /* ====================  Accessors     ==================== */
        bool isDead();
        RRNode *getNode();
        RRRobot getRobot();
        RRBoard getBoard();
        RRNode *getShorterNode(unsigned int line, unsigned int column);


        /* ====================  Mutators      ==================== */
        void setShorterNode(unsigned int line, unsigned int column, RRNode *node);


        /* ====================  Operators     ==================== */


        /* ====================  Methods       ==================== */
        void init(RRRobot &robot);
        void init(const std::string filename, RRRobot &robot);
        int isNodeExists(RRNode &node);
        void move(RRRobotMove move);
        void findBestRoutes();
        RRNode *findBestRoutes(unsigned int line, unsigned int column);
        RRNode *bestRoute(unsigned int line, unsigned int column);



    protected:
        /* ====================  Methods       ==================== */
        void init();
        unsigned int minDist(std::vector<RRNode *> &queue);
        void resetShorterNodes();
        void addToQueue(std::vector<RRNode *> &queue, RRNode * node);
};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */
#endif
