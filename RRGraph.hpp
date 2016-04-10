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
    private:
        /* ====================  Data members  ==================== */
        RRBoard *_board;

        std::vector<RRNode> _nodes;


    public:
        /* ====================  Constructors  ==================== */
        RRGraph();
        RRGraph(RRBoard *board);
        RRGraph(RRBoard &board);


        /* ====================  Accessors     ==================== */



        /* ====================  Mutators      ==================== */



        /* ====================  Operators     ==================== */



        /* ====================  Methods       ==================== */
        void init();
        void init(RRBoard *board);



    protected:
        /* ====================  Methods       ==================== */


};
/* -----************************  end of class  ************************----- \\
   RRNode
// -----****************************************************************----- */



#endif
