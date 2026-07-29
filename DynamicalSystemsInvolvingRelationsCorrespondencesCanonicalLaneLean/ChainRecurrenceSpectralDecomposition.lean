import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure ChainRecurrencePackage (R : RelationCorrespondencePackage) where
  chainRecurrentSet : Set R.stateSpace
  chainTransitiveComponents : Set (Set R.stateSpace)
  spectralDecomposition : Set (Set R.stateSpace)
  chainRecurrenceFromRelation : Prop
  spectralDecompositionFromRelation : Prop

def ChainRecurrenceClosed {R : RelationCorrespondencePackage}
    (C : ChainRecurrencePackage R) : Prop :=
  C.chainRecurrenceFromRelation ∧ C.spectralDecompositionFromRelation

structure ChainRecurrenceEvidence {R : RelationCorrespondencePackage}
    (C : ChainRecurrencePackage R) where
  chainRecurrenceFromRelationClosed : C.chainRecurrenceFromRelation
  spectralDecompositionFromRelationClosed : C.spectralDecompositionFromRelation

theorem chain_recurrence_closed_from_evidence {R : RelationCorrespondencePackage}
    (C : ChainRecurrencePackage R) (E : ChainRecurrenceEvidence C) : ChainRecurrenceClosed C := by
  exact And.intro E.chainRecurrenceFromRelationClosed E.spectralDecompositionFromRelationClosed

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse
