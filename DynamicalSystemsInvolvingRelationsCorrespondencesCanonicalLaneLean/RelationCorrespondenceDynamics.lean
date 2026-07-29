import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure RelationCorrespondencePackage where
  stateSpace : Type u
  relation : stateSpace → stateSpace → Prop
  correspondence : stateSpace → Set (stateSpace)
  forwardInvariant : Prop
  backwardInvariant : Prop

def RelationCorrespondenceClosed (R : RelationCorrespondencePackage) : Prop :=
  R.forwardInvariant ∧ R.backwardInvariant

structure RelationCorrespondenceEvidence (R : RelationCorrespondencePackage) where
  forwardInvariantClosed : R.forwardInvariant
  backwardInvariantClosed : R.backwardInvariant

theorem relation_correspondence_closed_from_evidence (R : RelationCorrespondencePackage)
    (E : RelationCorrespondenceEvidence R) : RelationCorrespondenceClosed R := by
  exact And.intro E.forwardInvariantClosed E.backwardInvariantClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse
