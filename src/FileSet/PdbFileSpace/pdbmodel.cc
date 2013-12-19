#include "../../../includes/FileSet/PdbFileSpace/pdbmodelresidueset.hpp"
#include "../../../includes/FileSet/PdbFileSpace/pdbmodel.hpp"

using namespace std;
using namespace PdbFileSpace;

//////////////////////////////////////////////////////////
//                       CONSTRUCTOR                    //
//////////////////////////////////////////////////////////
PdbModel::PdbModel() {}

//////////////////////////////////////////////////////////
//                         ACCESSOR                     //
//////////////////////////////////////////////////////////

int PdbModel::GetModelSerialNumber(){
    return model_serial_number_;
}

PdbModelResidueSet* PdbModel::GetModelResidueSet(){
    return model_residue_set_;
}

//////////////////////////////////////////////////////////
//                       MUTATOR                        //
//////////////////////////////////////////////////////////

void PdbModel::SetModelSerialNumber(int model_serial_number){
    model_serial_number_ = model_serial_number;
}

void PdbModel::SetModelResidueSet(PdbModelResidueSet* model_residue_set){
    model_residue_set_ = model_residue_set;
}

//////////////////////////////////////////////////////////
//                        FUNCTIONS                     //
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
//                      DISPLAY FUNCTION                //
//////////////////////////////////////////////////////////

