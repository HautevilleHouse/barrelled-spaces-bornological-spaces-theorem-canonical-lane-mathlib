import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure MackeyTopologyPackage where
  space : Type u
  topology : TopologicalSpace space
  pairing : Pairing ℝ space (dual space)
  mackeyTopologyDefined : Prop
  compatibleTopologyCondition : Prop
  mackeyArensTheorem : Prop

structure MackeyTopologyEvidence (M : MackeyTopologyPackage) where
  mackeyTopologyDefinedClosed : M.mackeyTopologyDefined
  compatibleTopologyConditionClosed : M.compatibleTopologyCondition
  mackeyArensTheoremClosed : M.mackeyArensTheorem

def MackeyTopologyClosed (M : MackeyTopologyPackage) : Prop :=
  M.mackeyTopologyDefined ∧ M.compatibleTopologyCondition ∧ M.mackeyArensTheorem

theorem mackey_topology_closed_from_evidence (M : MackeyTopologyPackage) (E : MackeyTopologyEvidence M) :
    MackeyTopologyClosed M := by
  exact And.intro E.mackeyTopologyDefinedClosed (And.intro E.compatibleTopologyConditionClosed E.mackeyArensTheoremClosed)

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse