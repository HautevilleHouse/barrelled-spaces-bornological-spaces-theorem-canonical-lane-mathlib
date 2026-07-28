import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BornologicalSpacePackage where
  vectorSpace : Type u
  topology : TopologicalSpace vectorSpace
  bornology : Bornology vectorSpace
  boundedSetsAbsorbing : Prop
  bornivorousSetsAreNeighborhoods : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  boundedSetsAbsorbingClosed : B.boundedSetsAbsorbing
  bornivorousSetsAreNeighborhoodsClosed : B.bornivorousSetsAreNeighborhoods

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.boundedSetsAbsorbing ∧ B.bornivorousSetsAreNeighborhoods

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage) (E : BornologicalSpaceEvidence B) :
    BornologicalSpaceClosed B := by
  exact And.intro E.boundedSetsAbsorbingClosed E.bornivorousSetsAreNeighborhoodsClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse