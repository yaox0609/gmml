#ifndef OVERLAPS_HPP
#define OVERLAPS_HPP

#include "assembly.hpp"

//*******************************************

typedef std::vector<MolecularModeling::Atom*> AtomVector;
typedef std::vector<GeometryTopology::Coordinate*> CoordinateVector;
typedef std::vector<MolecularModeling::Assembly*> AssemblyVector;

//*******************************************

using namespace MolecularModeling;

namespace gmml
{

    double CalculateAtomicOverlaps(AtomVector atomsA, AtomVector atomsB);

    double CalculateAtomicOverlaps(Atom *atomA, Atom *atomB, double radiusA = -0.1, double radiusB = -0.1);

}


#endif // SUPERIMPOSITION_HPP
