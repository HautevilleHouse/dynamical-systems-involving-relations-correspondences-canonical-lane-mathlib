import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.InvariantMeasurePackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondences

structure AttractorPackage {R : RelationCorrespondencePackage} where
  attractorSet : Set R.domainSpace.carrier
  forwardInvariance : Prop
  attractingProperty : Prop
  basinOfAttraction : Set R.domainSpace.carrier

structure AttractorEvidence {R : RelationCorrespondencePackage} (A : AttractorPackage R) where
  forwardInvarianceClosed : A.forwardInvariance
  attractingPropertyClosed : A.attractingProperty

def AttractorClosed {R : RelationCorrespondencePackage} (A : AttractorPackage R) : Prop :=
  A.forwardInvariance ∧ A.attractingProperty

theorem attractor_closed_from_evidence {R : RelationCorrespondencePackage} (A : AttractorPackage R) (E : AttractorEvidence A) : AttractorClosed A := by
  exact And.intro E.forwardInvarianceClosed E.attractingPropertyClosed

end DynamicalSystemsInvolvingRelationsCorrespondences
end HautevilleHouse
