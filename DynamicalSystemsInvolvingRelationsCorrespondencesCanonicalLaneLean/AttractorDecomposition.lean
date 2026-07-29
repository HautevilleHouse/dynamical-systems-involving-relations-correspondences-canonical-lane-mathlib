import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.RelationCorrespondenceAdmissibleClass

/-!
# Attractor Decomposition Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure AttractorDecompositionPackage (O : RelationCorrespondenceAdmittedObject) where
  attractorSet : Set O.space.carrier
  basinOfAttraction : Set O.space.carrier
  decompositionChain : List (Set O.space.carrier)
  attractorClosed : Prop
  basinClosed : Prop
  chainComplete : Prop

structure AttractorDecompositionEvidence (O : RelationCorrespondenceAdmittedObject)
    (A : AttractorDecompositionPackage O) where
  attractorClosedClosed : A.attractorClosed
  basinClosedClosed : A.basinClosed
  chainCompleteClosed : A.chainComplete

def AttractorDecompositionClosed (O : RelationCorrespondenceAdmittedObject)
    (A : AttractorDecompositionPackage O) : Prop :=
  A.attractorClosed ∧ A.basinClosed ∧ A.chainComplete

theorem attractor_decomposition_closed_from_evidence
    (O : RelationCorrespondenceAdmittedObject) (A : AttractorDecompositionPackage O)
    (E : AttractorDecompositionEvidence O A) : AttractorDecompositionClosed O A := by
  exact And.intro E.attractorClosedClosed (And.intro E.basinClosedClosed E.chainCompleteClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse