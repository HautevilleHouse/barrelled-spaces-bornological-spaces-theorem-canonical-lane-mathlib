import canonicalLaneMathlib.AdmissibleClass
import BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean.BarrelledSpaceStructure
import BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean.BornologicalSpaceStructure

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure GrothendieckTheoremPackage (B : BarrelledSpacePackage) (borno : BornologicalSpacePackage) where
  barrelledImpliesBornological : Prop
  bornologicalImpliesBarrelled : Prop
  equivalenceEstablished : Prop

structure GrothendieckTheoremEvidence {B : BarrelledSpacePackage} {borno : BornologicalSpacePackage}
    (G : GrothendieckTheoremPackage B borno) where
  barrelledImpliesBornologicalClosed : G.barrelledImpliesBornological
  bornologicalImpliesBarrelledClosed : G.bornologicalImpliesBarrelled
  equivalenceEstablishedClosed : G.equivalenceEstablished

def GrothendieckTheoremClosed {B : BarrelledSpacePackage} {borno : BornologicalSpacePackage}
    (G : GrothendieckTheoremPackage B borno) : Prop :=
  G.barrelledImpliesBornological ∧ G.bornologicalImpliesBarrelled ∧ G.equivalenceEstablished

theorem grothendieck_theorem_closed_from_evidence {B : BarrelledSpacePackage} {borno : BornologicalSpacePackage}
    (G : GrothendieckTheoremPackage B borno) (E : GrothendieckTheoremEvidence G) : GrothendieckTheoremClosed G := by
  exact And.intro E.barrelledImpliesBornologicalClosed
    (And.intro E.bornologicalImpliesBarrelledClosed E.equivalenceEstablishedClosed)

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse