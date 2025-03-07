#ifndef CONDENSEDSEQUENCERESIDUE_HPP
#define CONDENSEDSEQUENCERESIDUE_HPP

#include <string>
#include <iostream>
#include <map>

namespace CondensedSequenceSpace
{
    class CondensedSequenceResidue
    {
        public:
            //////////////////////////////////////////////////////////
            //                    TYPE DEFINITION                   //
            //////////////////////////////////////////////////////////
            typedef std::map<int, std::string> DerivativeMap;

            //////////////////////////////////////////////////////////
            //                       CONSTRUCTOR                    //
            //////////////////////////////////////////////////////////
            /*! \fn
              * Default constructor
              */
            CondensedSequenceResidue();
            CondensedSequenceResidue(std::string residue_string);

            //////////////////////////////////////////////////////////
            //                       ACCESSOR                       //
            //////////////////////////////////////////////////////////
/** \addtogroup Molecular_Data_Structure
              * @{
              */
            bool GetIsTerminal();
            std::string GetIsomer();
            std::string GetConfiguration();
            std::string GetName();
            int GetAnomericCarbon();
            int GetOxygenPosition();
            DerivativeMap GetDerivatives();
            int GetParentId();
	    int GetBondId(); //Added by Yao 08/03/2018. Bond Id is to label the index of the bond of a residue to its parent, starting from reducing end.Numbering starts from 0.
/** @}*/
            //////////////////////////////////////////////////////////
            //                       MUTATOR                        //
            //////////////////////////////////////////////////////////
/** \addtogroup Manipulators
              * @{
              */
            void SetIsTerminal(bool is_terminal);
            void SetIsomer(std::string isomer);
            void SetConfiguration(std::string configuration);
            void SetName(std::string name);
            void SetAnomericCarbon(int anomeric_carbon);
            void SetOxygenPosition(int oxygen_position);
            void SetDerivatives(DerivativeMap derivatives);
            void SetParentId(int parent_id);
	    void SetBondId(int bond_id); //Added by Yao 08/03/2018. Bond Id is to label the index of the bond of a residue to its parent, starting from reducing end.Numbering starts from 0.
/** @}*/
            //////////////////////////////////////////////////////////
            //                        FUNCTIONS                     //
            //////////////////////////////////////////////////////////

            //////////////////////////////////////////////////////////
            //                       DISPLAY FUNCTION               //
            //////////////////////////////////////////////////////////
            /*! \fn
              * A function to print out the condensed sequence residue contents in a structural format
              * Print out the information in a defined structure
              * @param out An output stream, the print result will be written in the given output stream
              */
            void Print(std::ostream& out = std::cout);

        private:
            //////////////////////////////////////////////////////////
            //                       ATTRIBUTES                     //
            //////////////////////////////////////////////////////////
            bool is_terminal_;
            std::string isomer_;
            std::string configuration_;
            std::string name_;
            int anomeric_carbon_;
            int oxygen_position_;
            DerivativeMap derivatives_;
            int parent_id_;
	    int bond_id_;  //Added by Yao 08/03/2018. Bond Id is to label the index of the bond of a residue to its parent, starting from reducing end.Numbering starts from 0.
    };
}

#endif // CONDENSEDSEQUENCERESIDUE_HPP
