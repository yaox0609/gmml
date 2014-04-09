
#include "../../../includes/FileSet/PdbFileSpace/pdbresidue.hpp"

using namespace std;
using namespace PdbFileSpace;

//////////////////////////////////////////////////////////
//                       CONSTRUCTOR                    //
//////////////////////////////////////////////////////////
PdbResidue::PdbResidue() {}

//////////////////////////////////////////////////////////
//                         ACCESSOR                     //
//////////////////////////////////////////////////////////
char PdbResidue::GetResidueChainId()
{
    return residue_chain_id_;
}
string PdbResidue::GetResidueName()
{
    return residue_name_;
}
int PdbResidue::GetResidueSequenceNumber()
{
    return residue_sequence_number_;
}

//////////////////////////////////////////////////////////
//                          MUTATOR                     //
//////////////////////////////////////////////////////////
void PdbResidue::SetResidueChainId(char residue_chain_id)
{
    residue_chain_id_ = residue_chain_id;
}
void PdbResidue::SetResidueName(const string residue_name)
{
    residue_name_ = residue_name;
}
void PdbResidue::SetResidueSequenceNumber(int residue_sequence_number)
{
    residue_sequence_number_ = residue_sequence_number;
}

//////////////////////////////////////////////////////////
//                      DISPLAY FUNCTION                //
//////////////////////////////////////////////////////////
void PdbResidue::Print(ostream &out)
{
}









