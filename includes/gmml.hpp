#ifndef GMML_HPP
#define GMML_HPP

#include "common.hpp"
#include "utils.hpp"
#include "InputSet/CifFileSpace/ciffile.hpp"
#include "InputSet/CifFileSpace/ciffileatom.hpp"
#include "InputSet/CifFileSpace/ciffileprocessingexception.hpp"
#include "InputSet/CoordinateFileSpace/coordinatefile.hpp"
#include "InputSet/CoordinateFileSpace/coordinatefileprocessingexception.hpp"
#include "InputSet/PdbFileSpace/inputfile.hpp"
#include "InputSet/PdbFileSpace/pdbatomsection.hpp"
#include "InputSet/PdbFileSpace/pdbatomcard.hpp"
#include "InputSet/PdbFileSpace/pdbauthorsection.hpp"
#include "InputSet/PdbFileSpace/pdbcaveatsection.hpp"
#include "InputSet/PdbFileSpace/pdbcispeptidesection.hpp"
#include "InputSet/PdbFileSpace/pdbcispeptidecard.hpp"
#include "InputSet/PdbFileSpace/pdbcompoundsection.hpp"
#include "InputSet/PdbFileSpace/pdbcompoundspecification.hpp"
#include "InputSet/PdbFileSpace/pdbconnectsection.hpp"
#include "InputSet/PdbFileSpace/pdbcrystallographiccard.hpp"
#include "InputSet/PdbFileSpace/pdbdatabasereferencesection.hpp"
#include "InputSet/PdbFileSpace/pdbdatabasereference.hpp"
#include "InputSet/PdbFileSpace/pdbdisulfidebondsection.hpp"
#include "InputSet/PdbFileSpace/pdbdisulfideresidue.hpp"
#include "InputSet/PdbFileSpace/pdbdisulfideresiduebond.hpp"
#include "InputSet/PdbFileSpace/pdbfile.hpp"
#include "InputSet/PdbFileSpace/pdbfileprocessingexception.hpp"
#include "InputSet/PdbFileSpace/pdbformulasection.hpp"
#include "InputSet/PdbFileSpace/pdbformulacard.hpp"
#include "InputSet/PdbFileSpace/pdbheadercard.hpp"
#include "InputSet/PdbFileSpace/pdbhelixsection.hpp"
#include "InputSet/PdbFileSpace/pdbhelixcard.hpp"
#include "InputSet/PdbFileSpace/pdbhelixresidue.hpp"
#include "InputSet/PdbFileSpace/pdbheterogencard.hpp"
#include "InputSet/PdbFileSpace/pdbheterogenatomsection.hpp"
#include "InputSet/PdbFileSpace/pdbheterogensection.hpp"
#include "InputSet/PdbFileSpace/pdbheterogennamesection.hpp"
#include "InputSet/PdbFileSpace/pdbheterogennamecard.hpp"
#include "InputSet/PdbFileSpace/pdbheterogensynonymsection.hpp"
#include "InputSet/PdbFileSpace/pdbheterogensynonymcard.hpp"
#include "InputSet/PdbFileSpace/pdbjournalsection.hpp"
#include "InputSet/PdbFileSpace/pdbkeywordssection.hpp"
#include "InputSet/PdbFileSpace/pdbexperimentaldatasection.hpp"
#include "InputSet/PdbFileSpace/pdblinksection.hpp"
#include "InputSet/PdbFileSpace/pdblinkcard.hpp"
#include "InputSet/PdbFileSpace/pdblinkcardresidue.hpp"
#include "InputSet/PdbFileSpace/pdbmastercard.hpp"
#include "InputSet/PdbFileSpace/pdbmatrixnsection.hpp"
#include "InputSet/PdbFileSpace/pdbmatrixncard.hpp"
#include "InputSet/PdbFileSpace/pdbmodelsection.hpp"
#include "InputSet/PdbFileSpace/pdbmodelcard.hpp"
#include "InputSet/PdbFileSpace/pdbmodelresidueset.hpp"
#include "InputSet/PdbFileSpace/pdbmodeltypesection.hpp"
#include "InputSet/PdbFileSpace/pdbnummodelcard.hpp"
#include "InputSet/PdbFileSpace/pdbobsoletesection.hpp"
#include "InputSet/PdbFileSpace/pdbobsoletecard.hpp"
#include "InputSet/PdbFileSpace/pdboriginxnsection.hpp"
#include "InputSet/PdbFileSpace/pdboriginxncard.hpp"
#include "InputSet/PdbFileSpace/pdbremarksection.hpp"
#include "InputSet/PdbFileSpace/pdbresidue.hpp"
#include "InputSet/PdbFileSpace/pdbresiduemodificationsection.hpp"
#include "InputSet/PdbFileSpace/pdbresiduemodificationcard.hpp"
#include "InputSet/PdbFileSpace/pdbresiduesequencesection.hpp"
#include "InputSet/PdbFileSpace/pdbresiduesequencecard.hpp"
#include "InputSet/PdbFileSpace/pdbrevisiondatasection.hpp"
#include "InputSet/PdbFileSpace/pdbrevisiondatacard.hpp"
#include "InputSet/PdbFileSpace/pdbscalensection.hpp"
#include "InputSet/PdbFileSpace/pdbscalencard.hpp"
#include "InputSet/PdbFileSpace/pdbsequenceadvancedsection.hpp"
#include "InputSet/PdbFileSpace/pdbsequenceadvancedcard.hpp"
#include "InputSet/PdbFileSpace/pdbsheetsection.hpp"
#include "InputSet/PdbFileSpace/pdbsheetcard.hpp"
#include "InputSet/PdbFileSpace/pdbsheetstrand.hpp"
#include "InputSet/PdbFileSpace/pdbsheetstrandresidue.hpp"
#include "InputSet/PdbFileSpace/pdbsitesection.hpp"
#include "InputSet/PdbFileSpace/pdbsitecard.hpp"
#include "InputSet/PdbFileSpace/pdbsiteresidue.hpp"
#include "InputSet/PdbFileSpace/pdbsourcecard.hpp"
#include "InputSet/PdbFileSpace/pdbsourcesection.hpp"
#include "InputSet/PdbFileSpace/pdbsplitsection.hpp"
#include "InputSet/PdbFileSpace/pdbsupersededentriescard.hpp"
#include "InputSet/PdbFileSpace/pdbsupersededentriessection.hpp"
#include "InputSet/PdbFileSpace/pdbtitlesection.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtatom.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtatomcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtbranchcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtcompoundcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtfile.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtfileprocessingexception.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtmodel.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtmodelcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtmodelresidueset.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtremarkcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqtrootcard.hpp"
#include "InputSet/PdbqtFileSpace/pdbqttorsionaldofcard.hpp"
#include "InputSet/TopologyFileSpace/topologyangle.hpp"
#include "InputSet/TopologyFileSpace/topologyangletype.hpp"
#include "InputSet/TopologyFileSpace/topologyassembly.hpp"
#include "InputSet/TopologyFileSpace/topologyatom.hpp"
#include "InputSet/TopologyFileSpace/topologyatompair.hpp"
#include "InputSet/TopologyFileSpace/topologybond.hpp"
#include "InputSet/TopologyFileSpace/topologybondtype.hpp"
#include "InputSet/TopologyFileSpace/topologydihedral.hpp"
#include "InputSet/TopologyFileSpace/topologydihedraltype.hpp"
#include "InputSet/TopologyFileSpace/topologyfile.hpp"
#include "InputSet/TopologyFileSpace/topologyfileprocessingexception.hpp"
#include "InputSet/TopologyFileSpace/topologyresidue.hpp"
#include "InputSet/CondensedSequenceSpace/condensedsequence.hpp"
#include "InputSet/CondensedSequenceSpace/condensedsequenceglycam06residue.hpp"
#include "InputSet/CondensedSequenceSpace/condensedsequenceprocessingexception.hpp"
#include "InputSet/CondensedSequenceSpace/condensedsequenceresidue.hpp"
#include "GeometryTopology/coordinate.hpp"
#include "GeometryTopology/plane.hpp"
#include "GeometryTopology/cell.hpp"
#include "GeometryTopology/grid.hpp"
#include "GeometryTopology/InternalCoordinate/angle.hpp"
#include "GeometryTopology/InternalCoordinate/dihedral.hpp"
#include "GeometryTopology/InternalCoordinate/distance.hpp"
#include "Glycan/chemicalcode.hpp"
#include "Glycan/monosaccharide.hpp"
#include "Glycan/note.hpp"
#include "Glycan/oligosaccharide.hpp"
#include "Glycan/ontologyvocabulary.hpp"
#include "Glycan/sugarname.hpp"
#include "MolecularModeling/assembly.hpp"
#include "MolecularModeling/atom.hpp"
#include "MolecularModeling/atomnode.hpp"
#include "MolecularModeling/dockingatom.hpp"
#include "MolecularModeling/element.hpp"
#include "MolecularModeling/moleculardynamicatom.hpp"
#include "MolecularModeling/overlaps.hpp"
#include "MolecularModeling/quantommechanicatom.hpp"
#include "MolecularModeling/residueproperties.hpp"
#include "MolecularModeling/residue.hpp"
#include "MolecularModeling/residuenode.hpp"
#include "MolecularModeling/superimposition.hpp"
#include "MolecularModeling/molecule.hpp"
#include "MolecularModeling/ring_shape_detection.hpp"
#include "ParameterSet/LibraryFileSpace/libraryfile.hpp"
#include "ParameterSet/LibraryFileSpace/libraryfileatom.hpp"
#include "ParameterSet/LibraryFileSpace/libraryfileprocessingexception.hpp"
#include "ParameterSet/LibraryFileSpace/libraryfileresidue.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfile.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfileangle.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfileatom.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfilebond.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfiledihedral.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfiledihedralterm.hpp"
#include "ParameterSet/ParameterFileSpace/parameterfileprocessingexception.hpp"
#include "ParameterSet/PrepFileSpace/prepfile.hpp"
#include "ParameterSet/PrepFileSpace/prepfileatom.hpp"
#include "ParameterSet/PrepFileSpace/prepfileprocessingexception.hpp"
#include "ParameterSet/PrepFileSpace/prepfileresidue.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessor.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessoralternateresidue.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorchaintermination.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessordisulfidebond.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorhistidinemapping.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessormissingresidue.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorreplacedhydrogen.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorresidueinfo.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorresidueinfo.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorunrecognizedheavyatom.hpp"
#include "Resolver/PdbPreprocessor/pdbpreprocessorunrecognizedresidue.hpp"

typedef std::vector<MolecularModeling::Atom*> AtomVector;
typedef std::vector<GeometryTopology::Coordinate*> CoordinateVector;
typedef std::vector<MolecularModeling::Residue*> ResidueVector;
typedef std::vector<MolecularModeling::Assembly*> AssemblyVector;
typedef GeometryTopology::Coordinate Vector;
typedef std::vector<std::string> StringVector;

#endif // GMML_HPP
