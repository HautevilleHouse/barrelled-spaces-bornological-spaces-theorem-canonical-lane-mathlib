import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  linearStructure : TopologicalVectorSpace space
  barrelledProperty : Prop
  bornologicalProperty : Prop
  conclusion : barrelledProperty ∧ bornologicalProperty

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.barrelledProperty ∧ A.object.bornologicalProperty) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse