#ifndef CONDENSEDSEQUENCE_HPP
#define CONDENSEDSEQUENCE_HPP

#include <string>
#include <iostream>
#include <vector>
#include <map>
#include <bitset>
#include <algorithm>
#include "../../common.hpp"

namespace CondensedSequenceSpace
{
    class CondensedSequenceResidue;
    class CondensedSequenceGlycam06Residue;
    // Options for condensed sequence: rotamers and glycosidic angles
    struct RotamersAndGlycosidicAnglesInfo{
        public:
            RotamersAndGlycosidicAnglesInfo(int linkage_index,
                                            std::vector<std::pair<std::string,
                                            std::vector<std::string> > > possible_rotamers,
                                            std::vector<std::pair<std::string,
                                            std::vector<std::string> > > selected_rotamers,
                                            std::vector<std::pair<std::string,
                                            double> > enabled_glycosidic_angles)
            {
                linkage_index_ = linkage_index;
                possible_rotamers_ = possible_rotamers;
                selected_rotamers_ = selected_rotamers;
                enabled_glycosidic_angles_ = enabled_glycosidic_angles;
            }
            int GetLinkageIndex(){
                return linkage_index_;
            }
            std::vector<std::pair<std::string, std::vector<std::string> > > GetPossibleRotamers(){
                return possible_rotamers_;
            }
            std::vector<std::pair<std::string, std::vector<std::string> > > GetSelectedRotamers(){
                return selected_rotamers_;
            }
            std::vector<std::pair<std::string, double> > GetEnabledGlycosidicAngles(){
                return enabled_glycosidic_angles_;
            }
            int linkage_index_;
            std::vector<std::pair<std::string, std::vector<std::string> > > possible_rotamers_;
            std::vector<std::pair<std::string, std::vector<std::string> > > selected_rotamers_;
            std::vector<std::pair<std::string, double> > enabled_glycosidic_angles_;
    };
    struct GraphVizDotConfig {
        public:
            bool show_config_labels_;
            bool show_edge_labels_;
            bool show_position_labels_;
            int dpi_;
            std::string file_name_;
            std::string svg_directory_path_;

            GraphVizDotConfig()
            {
                this->show_edge_labels_ = false;
                this->show_config_labels_ = true;
                this->show_position_labels_ = true;
                this->dpi_ = 72;
                this->svg_directory_path_ = "/programs/gw_misc/SNFG/V1/";
                this->file_name_ = "oligosaccharide.dot";
            }
    };
    class CondensedSequence
    {
        public:
            //////////////////////////////////////////////////////////
            //                    TYPE DEFINITION                   //
            //////////////////////////////////////////////////////////
            typedef std::vector<CondensedSequenceResidue*> CondensedSequenceResidueVector;
            typedef std::vector<gmml::CondensedSequenceTokenType> CondensedSequenceTokenTypeVector;
            typedef std::vector<CondensedSequenceResidue*> CondensedSequenceResidueTree;
            typedef std::vector<CondensedSequenceGlycam06Residue*> CondensedSequenceGlycam06ResidueTree;
            typedef std::pair<std::string, RotamersAndGlycosidicAnglesInfo*> RotamerNameInfoPair;
            typedef std::vector<RotamerNameInfoPair> CondensedSequenceRotamersAndGlycosidicAnglesInfo;
            typedef std::map<int, std::vector<std::vector<double> > > IndexLinkageConfigurationMap;
            typedef std::map<int, std::vector<std::vector<std::string> > > IndexConfigurationNameMap;
            typedef std::map<int, std::string> IndexNameMap;
            typedef std::map<int, std::string> DerivativeMap;
            //////////////////////////////////////////////////////////
            //                       CONSTRUCTOR                    //
            //////////////////////////////////////////////////////////
            CondensedSequence();
            CondensedSequence(std::string sequence);
            //////////////////////////////////////////////////////////
            //                       ACCESSOR                       //
            //////////////////////////////////////////////////////////
            CondensedSequenceResidueVector GetResidues();
            CondensedSequenceTokenTypeVector GetTokens();
            CondensedSequenceResidueTree GetCondensedSequenceResidueTree();
            CondensedSequenceGlycam06ResidueTree GetCondensedSequenceGlycam06ResidueTree();
            //////////////////////////////////////////////////////////
            //                       MUTATOR                        //
            //////////////////////////////////////////////////////////
            void SetResidues(CondensedSequenceResidueVector residues);
            void AddResidue(CondensedSequenceResidue* residue);
            void SetTokens(CondensedSequenceTokenTypeVector tokens);
            void AddToken(gmml::CondensedSequenceTokenType token);
            //////////////////////////////////////////////////////////
            //                        FUNCTIONS                     //
            //////////////////////////////////////////////////////////
            int InsertNodeInCondensedSequenceResidueTree(CondensedSequenceResidue* condensed_residue, int parent_node_id, int bond_id );
            int InsertNodeInCondensedSequenceGlycam06ResidueTree(CondensedSequenceGlycam06Residue* condensed_glycam06_residue, int parent_node_id, int bond_id );
            void ParseCondensedSequence(std::string sequence);
            void BuildArrayTreeOfCondensedSequenceResidue();
            void BuildArrayTreeOfCondensedSequenceGlycam06Residue(CondensedSequenceResidueTree residue_tree);
            std::string GetGlycam06TerminalResidueCodeOfTerminalResidue(std::string terminal_residue_name);
            std::string GetGlycam06ResidueCodeOfCondensedResidue(CondensedSequenceResidue* condensed_residue, std::vector<int> open_valences);
            std::string GetFirstLetterOfGlycam06ResidueCode(std::bitset<10> open_valences_check);
            std::string GetSecondLetterOfGlycam06ResidueCode(std::string residue_name, std::string isomer);
            std::string GetThirdLetterOfGlycam06ResidueCode(std::string configuration, std::string ring_type);
            CondensedSequenceGlycam06Residue* GetCondensedSequenceDerivativeGlycam06Residue(std::string derivative_name, int derivative_index);
            CondensedSequenceRotamersAndGlycosidicAnglesInfo GetCondensedSequenceRotamersAndGlycosidicAnglesInfo(CondensedSequenceResidueTree residue_tree);
            int CountAllPossibleSelectedRotamers(CondensedSequenceRotamersAndGlycosidicAnglesInfo rotamers_glycosidic_angles_info);
            int CountAllPossible28LinkagesRotamers(CondensedSequenceRotamersAndGlycosidicAnglesInfo rotamers_glycosidic_angles_info);
            std::vector<std::vector<int> > CreateBaseMapAllPossibleSelectedRotamers(CondensedSequenceRotamersAndGlycosidicAnglesInfo rotamers_glycosidic_angles_info);
            IndexLinkageConfigurationMap CreateIndexLinkageConfigurationMap(CondensedSequenceRotamersAndGlycosidicAnglesInfo rotamers_glycosidic_angles_info,
                                                                            IndexNameMap& names);
            //////////////////////////////////////////////////////////
            //                       DISPLAY FUNCTION               //
            //////////////////////////////////////////////////////////
            void Print(std::ostream& out = std::cout);
            void WriteGraphVizDotFile(GraphVizDotConfig& configs);
        private:
            //////////////////////////////////////////////////////////
            //                       ATTRIBUTES                     //
            //////////////////////////////////////////////////////////
            CondensedSequenceResidueVector residues_;
            CondensedSequenceTokenTypeVector tokens_;
            CondensedSequenceResidueTree condensed_sequence_residue_tree_;
            CondensedSequenceGlycam06ResidueTree condensed_sequence_glycam06_residue_tree_;
    };
}

#endif // CONDENSEDSEQUENCE_HPP
