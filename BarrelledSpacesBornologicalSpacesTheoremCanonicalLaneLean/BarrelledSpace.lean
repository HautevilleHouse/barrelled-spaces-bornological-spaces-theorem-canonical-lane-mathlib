import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BarrelledSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  locallyConvex : Prop
  barrelIsNeighborhood : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpace) where
  locallyConvexClosed : B.locallyConvex
  barrelIsNeighborhoodClosed : B.barrelIsNeighborhood

def BarrelledSpaceClosed (B : BarrelledSpace) : Prop :=
  B.locallyConvex ∧ B.barrelIsNeighborhood

theorem barrelled_space_closed_from_evidence (B : BarrelledSpace) (E : BarrelledSpaceEvidence B) :
    BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexClosed E.barrelIsNeighborhoodClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse