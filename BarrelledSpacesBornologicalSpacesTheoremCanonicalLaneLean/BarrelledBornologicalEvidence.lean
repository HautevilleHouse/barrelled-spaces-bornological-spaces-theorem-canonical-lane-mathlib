import canonicalLaneMathlib.AdmissibleClass
import BarrelledSpace
import BornologicalSpace

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure BarrelledBornologicalEvidence (A : AdmissibleClass) where
  barrelledEvidence : A.object.isBarrelled
  bornologicalEvidence : A.object.isBornological
  endpointOrRemainder : A.endpointSatisfied ∨ A.remainderRecorded

def BarrelledBornologicalClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem barrelled_bornological_closed_from_evidence (A : AdmissibleClass) (E : BarrelledBornologicalEvidence A) :
    BarrelledBornologicalClosed A := by
  rcases E with ⟨hBarr, hBorn, hGate⟩
  exact And.intro (And.intro hBarr hBorn) hGate

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
