import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BarrelPackage where
  locallyConvexSpace : Type u
  barrel : Set (locallyConvexSpace → ℝ)
  absorbing : Prop
  balanced : Prop
  convex : Prop
  closed : Prop
  isBarrel : absorbing ∧ balanced ∧ convex ∧ closed

structure BarrelEvidence (B : BarrelPackage) where
  absorbingClosed : B.absorbing
  balancedClosed : B.balanced
  convexClosed : B.convex
  closedClosed : B.closed

def BarrelClosed (B : BarrelPackage) : Prop :=
  B.absorbing ∧ B.balanced ∧ B.convex ∧ B.closed

theorem barrel_closed_from_evidence (B : BarrelPackage) (E : BarrelEvidence B) :
    BarrelClosed B := by
  exact And.intro E.absorbingClosed
    (And.intro E.balancedClosed (And.intro E.convexClosed E.closedClosed))

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse