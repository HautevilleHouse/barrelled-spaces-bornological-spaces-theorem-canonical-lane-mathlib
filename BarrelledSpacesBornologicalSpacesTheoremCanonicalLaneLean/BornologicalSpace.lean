import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BornologicalSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  locallyConvex : Prop
  boundedLinearContinuous : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpace) where
  locallyConvexClosed : B.locallyConvex
  boundedLinearContinuousClosed : B.boundedLinearContinuous

def BornologicalSpaceClosed (B : BornologicalSpace) : Prop :=
  B.locallyConvex ∧ B.boundedLinearContinuous

theorem bornological_space_closed_from_evidence (B : BornologicalSpace) (E : BornologicalSpaceEvidence B) :
    BornologicalSpaceClosed B := by
  exact And.intro E.locallyConvexClosed E.boundedLinearContinuousClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse