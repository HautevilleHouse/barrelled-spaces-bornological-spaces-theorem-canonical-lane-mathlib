import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BoundedSetPackage where
  locallyConvexSpace : Type u
  boundedSet : Set (locallyConvexSpace → ℝ)
  absorbing : Prop
  balanced : Prop
  convex : Prop
  bounded : Prop
  isBounded : absorbing ∧ balanced ∧ convex ∧ bounded

structure BoundedSetEvidence (B : BoundedSetPackage) where
  absorbingClosed : B.absorbing
  balancedClosed : B.balanced
  convexClosed : B.convex
  boundedClosed : B.bounded

def BoundedSetClosed (B : BoundedSetPackage) : Prop :=
  B.absorbing ∧ B.balanced ∧ B.convex ∧ B.bounded

theorem bounded_set_closed_from_evidence (B : BoundedSetPackage) (E : BoundedSetEvidence B) :
    BoundedSetClosed B := by
  exact And.intro E.absorbingClosed
    (And.intro E.balancedClosed (And.intro E.convexClosed E.boundedClosed))

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse