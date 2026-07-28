import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean.FoundationalTheoremInhabitants

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

structure RouteObligations where
  barrelledSpaceTheory : Prop
  bornologicalSpaceTheory : Prop
  boundedSetTheory : Prop
  barrelledImpliesBornological : Prop
  metrizableImpliesBornological : Prop

structure RouteEvidence (R : RouteObligations) where
  barrelledSpaceTheoryClosed : R.barrelledSpaceTheory
  bornologicalSpaceTheoryClosed : R.bornologicalSpaceTheory
  boundedSetTheoryClosed : R.boundedSetTheory
  barrelledImpliesBornologicalClosed : R.barrelledImpliesBornological
  metrizableImpliesBornologicalClosed : R.metrizableImpliesBornological

def RouteClosed (R : RouteObligations) : Prop :=
  R.barrelledSpaceTheory ∧ R.bornologicalSpaceTheory ∧ R.boundedSetTheory ∧
  R.barrelledImpliesBornological ∧ R.metrizableImpliesBornological

theorem route_closed_from_evidence (R : RouteObligations) (E : RouteEvidence R) :
    RouteClosed R := by
  exact And.intro E.barrelledSpaceTheoryClosed
    (And.intro E.bornologicalSpaceTheoryClosed
      (And.intro E.boundedSetTheoryClosed
        (And.intro E.barrelledImpliesBornologicalClosed E.metrizableImpliesBornologicalClosed)))

structure FoundationalTheoremInhabitants.toRouteObligations (T : FoundationalTheoremInhabitants) : RouteObligations := {
  barrelledSpaceTheory := T.barrel.barrelClosed
  bornologicalSpaceTheory := T.bornological.bornologicalClosed
  boundedSetTheory := T.boundedSet.boundedSetClosed
  barrelledImpliesBornological := T.barrelledImpliesBornological
  metrizableImpliesBornological := T.metrizableImpliesBornological
}

def route_evidence_from_foundational (T : FoundationalTheoremInhabitants) :
    RouteEvidence T.toRouteObligations := {
  barrelledSpaceTheoryClosed := T.barrel.barrelClosed
  bornologicalSpaceTheoryClosed := T.bornological.bornologicalClosed
  boundedSetTheoryClosed := T.boundedSet.boundedSetClosed
  barrelledImpliesBornologicalClosed := T.barrelledImpliesBornological
  metrizableImpliesBornologicalClosed := T.metrizableImpliesBornological
}

theorem route_closed_from_foundational (T : FoundationalTheoremInhabitants) :
    RouteClosed T.toRouteObligations := by
  exact route_closed_from_evidence T.toRouteObligations (route_evidence_from_foundational T)

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse