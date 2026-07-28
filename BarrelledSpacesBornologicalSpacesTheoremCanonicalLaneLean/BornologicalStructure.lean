import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BornologicalPackage where
  locallyConvexSpace : Type u
  boundedSetFamily : Set (Set (locallyConvexSpace → ℝ))
  everyBoundedLinearMapContinuous : Prop
  compatibleWithBornology : Prop

structure BornologicalEvidence (B : BornologicalPackage) where
  everyBoundedLinearMapContinuousClosed : B.everyBoundedLinearMapContinuous
  compatibleWithBornologyClosed : B.compatibleWithBornology

def BornologicalClosed (B : BornologicalPackage) : Prop :=
  B.everyBoundedLinearMapContinuous ∧ B.compatibleWithBornology

theorem bornological_closed_from_evidence (B : BornologicalPackage) (E : BornologicalEvidence B) :
    BornologicalClosed B := by
  exact And.intro E.everyBoundedLinearMapContinuousClosed E.compatibleWithBornologyClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse