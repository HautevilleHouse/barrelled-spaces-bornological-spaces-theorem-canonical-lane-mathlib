import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BarrelledSpacePackage where
  underlyingTVS : Type
  topology : TopologicalSpace underlyingTVS
  linearTopology : TopologicalVectorSpace underlyingTVS
  barrelCondition : Prop
  barrelConditionProof : barrelCondition

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  barrelConditionClosed : B.barrelCondition

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.barrelCondition

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage) (E : BarrelledSpaceEvidence B) :
    BarrelledSpaceClosed B := by
  exact E.barrelConditionClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse