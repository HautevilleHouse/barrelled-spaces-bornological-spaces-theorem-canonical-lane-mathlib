import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BornologicalSpacePackage where
  underlyingTVS : Type
  topology : TopologicalSpace underlyingTVS
  linearTopology : TopologicalVectorSpace underlyingTVS
  bornologicalCondition : Prop
  bornologicalConditionProof : bornologicalCondition

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalConditionClosed : B.bornologicalCondition

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalCondition

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage) (E : BornologicalSpaceEvidence B) :
    BornologicalSpaceClosed B := by
  exact E.bornologicalConditionClosed

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse