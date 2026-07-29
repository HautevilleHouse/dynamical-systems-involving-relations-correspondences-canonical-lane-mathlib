import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure InvariantMeasurePackage (A : AdmissibleClass) where
  measureSpace : Type u
  measure : measureSpace → ℝ
  invariance : Prop
  ergodicity : Prop

structure InvariantMeasureEvidence {A : AdmissibleClass} (M : InvariantMeasurePackage A) where
  measureDefinitionClosed : Prop
  invarianceClosed : M.invariance
  ergodicityClosed : M.ergodicity

def InvariantMeasureClosed {A : AdmissibleClass} (M : InvariantMeasurePackage A) : Prop :=
  M.invariance ∧ M.ergodicity

theorem invariant_measure_closed_from_evidence
    {A : AdmissibleClass} (M : InvariantMeasurePackage A) (E : InvariantMeasureEvidence M) :
    InvariantMeasureClosed M := by
  exact And.intro E.invarianceClosed E.ergodicityClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse