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
        bool isLimitedMoves(); //Si utiliser mvt limités
        bool isDead(); //Verifier si robot mort
        RRNode *getNode(); //renvoie le noeud sur lequel est le robot
        RRRobot getRobot();//Revoie le robot
        RRBoard getBoard();//Revoie le plateau
        RRRobotMove getPermMove(int unsigned n);//Revoie le mvt permis
        const RRTile &getTile(const unsigned int &l, const unsigned int &c);
        const std::vector<RRRobotMove> &getPermMoves() const;


        /* ====================  Mutators      ==================== */
        void limiteMoves(bool lim);//Utiliser les mvt limités
        void limiteMoves(std::vector<RRRobotMove> &moves);
        void setPermMoves(RRRobotMove *moves, const unsigned int &size);
        void setPermMoves(std::vector<RRRobotMove> &moves);
        void setPermMoves(std::vector<RRRobotMove> *moves);


        /* ====================  Operators     ==================== */


        /* ====================  Methods       ==================== */
        void init(RRRobot &robot);//Initialiser le graphe avec robot.
        void init(const char *filename, RRRobot &robot);//Init plateau et robot
        int isNodeExists(RRNode &node);//Si node existe.
        void move(RRRobotMove move);//Bouger le robot
        //Sans prise en compte de la direction finale du robot
        RRNode *findBestRoute(const unsigned int &l, const unsigned int &c);
        //Avec prise en compte de la direction finale du robot
        RRNode *findBestRoute(RRRobot &robot);


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
