import HautevilleHouse.BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean

def BarrelledBornologicalWitnessClosed (O : BarrelledBornologicalAdmittedObject) : Prop :=
  O.conclusion

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  barrelledBornologicalConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "barrelled-spaces-bornological-spaces-canonical-lane"

def sourceDescription : String :=
  "Barrelled Spaces Bornological Spaces Theorem"

def baselineCertificateLane : String :=
  "barrelled_bornological_constrained"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "open",
    barrelledBornologicalConstrainedStatement := "constrained barrelled-bornological theorem certificate",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end BarrelledSpacesBornologicalSpacesTheoremCanonicalLaneLean
end HautevilleHouse