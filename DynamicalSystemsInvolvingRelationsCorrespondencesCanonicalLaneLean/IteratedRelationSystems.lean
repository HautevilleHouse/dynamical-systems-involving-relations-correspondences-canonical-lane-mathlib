import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure IteratedRelationPackage (A : AdmissibleClass) where
  iteratedApplication : Nat → A.object.space → A.object.space → Prop
  monotonicity : Prop
  idempotence : Prop
  convergenceCondition : Prop

structure IteratedRelationEvidence {A : AdmissibleClass} (P : IteratedRelationPackage A) where
  monotonicityClosed : P.monotonicity
  idempotenceClosed : P.idempotence
  convergenceConditionClosed : P.convergenceCondition

def IteratedRelationClosed {A : AdmissibleClass} (P : IteratedRelationPackage A) : Prop :=
  P.monotonicity ∧ P.idempotence ∧ P.convergenceCondition

theorem iterated_relation_closed_from_evidence
    {A : AdmissibleClass} (P : IteratedRelationPackage A)
    (E : IteratedRelationEvidence P) : IteratedRelationClosed P := by
  exact And.intro E.monotonicityClosed
    (And.intro E.idempotenceClosed E.convergenceConditionClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse