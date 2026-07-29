import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.AttractorDecomposition

/-!
# Correspondence Iteration Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure CorrespondenceIterationPackage (O : RelationCorrespondenceAdmittedObject) where
  iterationMap : O.space.carrier → O.space.carrier → Prop
  fixedPoints : Set O.space.carrier
  convergenceProperty : Prop
  iterationClosed : Prop

structure CorrespondenceIterationEvidence (O : RelationCorrespondenceAdmittedObject)
    (C : CorrespondenceIterationPackage O) where
  fixedPointsClosed : C.fixedPoints ⊆ C.iterationMap.Codomain
  convergencePropertyClosed : C.convergenceProperty
  iterationClosedClosed : C.iterationClosed

def CorrespondenceIterationClosed (O : RelationCorrespondenceAdmittedObject)
    (C : CorrespondenceIterationPackage O) : Prop :=
  C.iterationClosed ∧ C.convergenceProperty

theorem correspondence_iteration_closed_from_evidence
    (O : RelationCorrespondenceAdmittedObject) (C : CorrespondenceIterationPackage O)
    (E : CorrespondenceIterationEvidence O C) : CorrespondenceIterationClosed O C := by
  exact And.intro E.iterationClosedClosed E.convergencePropertyClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse