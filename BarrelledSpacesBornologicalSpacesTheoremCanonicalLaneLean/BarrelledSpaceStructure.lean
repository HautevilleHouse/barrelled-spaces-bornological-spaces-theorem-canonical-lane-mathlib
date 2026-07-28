import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BarrelledSpacePackage where
  vectorSpace : Type u
  topology : TopologicalSpace vectorSpace
  locallyConvex : Prop
  barrelClosed : Prop
  barrelsAreNeighborhoods : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  locallyConvexClosed : B.locallyConvex
  barrelClosedClosed : B.barrelClosed
  barrelsAreNeighborhoodsClosed : B.barrelsAreNeighborhoods

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.locallyConvex ∧ B.barrelClosed ∧ B.barrelsAreNeighborhoods

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage) (E : BarrelledSpaceEvidence B) :
    BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexClosed (And.intro E.barrelClosedClosed E.barrelsAreNeighborhoodsClosed)

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse