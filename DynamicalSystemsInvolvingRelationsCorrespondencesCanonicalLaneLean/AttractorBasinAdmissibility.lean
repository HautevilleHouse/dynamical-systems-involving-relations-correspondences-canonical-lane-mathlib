import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure AttractorBasinPackage (R : RelationCorrespondencePackage) where
  attractor : Set R.stateSpace
  basinOfAttraction : Set R.stateSpace
  omegaLimitSet : Set R.stateSpace
  sigmaLimitSet : Set R.stateSpace
  alphaLimitSet : Set R.stateSpace
  forwardBasinIncluded : basinOfAttraction ⊆ attractor
  backwardBasinIncluded : attractor ⊆ basinOfAttraction

def AttractorBasinClosed {R : RelationCorrespondencePackage} (A : AttractorBasinPackage R) : Prop :=
  A.forwardBasinIncluded ∧ A.backwardBasinIncluded

structure AttractorBasinEvidence {R : RelationCorrespondencePackage}
    (A : AttractorBasinPackage R) where
  forwardBasinIncludedClosed : A.forwardBasinIncluded
  backwardBasinIncludedClosed : A.backwardBasinIncluded

theorem attractor_basin_closed_from_evidence {R : RelationCorrespondencePackage}
    (A : AttractorBasinPackage R) (E : AttractorBasinEvidence A) : AttractorBasinClosed A := by
  exact And.intro E.forwardBasinIncludedClosed E.backwardBasinIncludedClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse
