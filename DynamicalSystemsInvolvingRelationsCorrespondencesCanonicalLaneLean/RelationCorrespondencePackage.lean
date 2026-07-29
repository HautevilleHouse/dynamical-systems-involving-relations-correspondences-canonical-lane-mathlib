import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.DynamicalSystemSpace

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondences

structure RelationCorrespondencePackage where
  domainSpace : DynamicalSystemSpace
  codomainSpace : DynamicalSystemSpace
  relation : Type u
  upperHemContinuity : Prop
  lowerHemContinuity : Prop
  closedGraph : Prop

structure RelationCorrespondenceEvidence (R : RelationCorrespondencePackage) where
  upperHemContinuityClosed : R.upperHemContinuity
  lowerHemContinuityClosed : R.lowerHemContinuity
  closedGraphClosed : R.closedGraph

def RelationCorrespondenceClosed (R : RelationCorrespondencePackage) : Prop :=
  R.upperHemContinuity ∧ R.lowerHemContinuity ∧ R.closedGraph

theorem relation_correspondence_closed_from_evidence (R : RelationCorrespondencePackage) (E : RelationCorrespondenceEvidence R) : RelationCorrespondenceClosed R := by
  exact And.intro E.upperHemContinuityClosed (And.intro E.lowerHemContinuityClosed E.closedGraphClosed)

end DynamicalSystemsInvolvingRelationsCorrespondences
end HautevilleHouse
