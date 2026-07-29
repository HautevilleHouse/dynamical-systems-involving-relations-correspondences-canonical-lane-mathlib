import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure StabilityPackage (A : AdmissibleClass) where
  lyapunovFunction : Type u
  stabilityCondition : Prop
  asymptoticStability : Prop
  basinEstimate : Prop

structure StabilityEvidence {A : AdmissibleClass} (S : StabilityPackage A) where
  lyapunovFunctionClosed : S.lyapunovFunction
  stabilityConditionClosed : S.stabilityCondition
  asymptoticStabilityClosed : S.asymptoticStability
  basinEstimateClosed : S.basinEstimate

def StabilityClosed {A : AdmissibleClass} (S : StabilityPackage A) : Prop :=
  S.stabilityCondition ∧ S.asymptoticStability ∧ S.basinEstimate

theorem stability_closed_from_evidence
    {A : AdmissibleClass} (S : StabilityPackage A) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.stabilityConditionClosed
    (And.intro E.asymptoticStabilityClosed E.basinEstimateClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse