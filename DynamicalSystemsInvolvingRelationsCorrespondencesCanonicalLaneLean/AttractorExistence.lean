import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure AttractorExistencePackage (A : AdmissibleClass) where
  forwardInvariantSet : Prop
  attractorProperty : Prop
  basinOfAttraction : Prop
  globalAttractor : Prop

structure AttractorExistenceEvidence {A : AdmissibleClass} (P : AttractorExistencePackage A) where
  forwardInvariantSetClosed : P.forwardInvariantSet
  attractorPropertyClosed : P.attractorProperty
  basinOfAttractionClosed : P.basinOfAttraction
  globalAttractorClosed : P.globalAttractor

def AttractorExistenceClosed {A : AdmissibleClass} (P : AttractorExistencePackage A) : Prop :=
  P.forwardInvariantSet ∧ P.attractorProperty ∧ P.basinOfAttraction ∧ P.globalAttractor

theorem attractor_existence_closed_from_evidence
    {A : AdmissibleClass} (P : AttractorExistencePackage A) (E : AttractorExistenceEvidence P) :
    AttractorExistenceClosed P := by
  exact And.intro E.forwardInvariantSetClosed
    (And.intro E.attractorPropertyClosed
      (And.intro E.basinOfAttractionClosed E.globalAttractorClosed))

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse