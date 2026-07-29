import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.AttractorPackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondences

structure ChainRecurrencePackage {R : RelationCorrespondencePackage} where
  chainRecurrentSet : Set R.domainSpace.carrier
  chainTransitiveComponents : Set (Set R.domainSpace.carrier)
  conleyDecomposition : Prop
  morseDecomposition : Prop

structure ChainRecurrenceEvidence {R : RelationCorrespondencePackage} (C : ChainRecurrencePackage R) where
  conleyDecompositionClosed : C.conleyDecomposition
  morseDecompositionClosed : C.morseDecomposition

def ChainRecurrenceClosed {R : RelationCorrespondencePackage} (C : ChainRecurrencePackage R) : Prop :=
  C.conleyDecomposition ∧ C.morseDecomposition

theorem chain_recurrence_closed_from_evidence {R : RelationCorrespondencePackage} (C : ChainRecurrencePackage R) (E : ChainRecurrenceEvidence C) : ChainRecurrenceClosed C := by
  exact And.intro E.conleyDecompositionClosed E.morseDecompositionClosed

end DynamicalSystemsInvolvingRelationsCorrespondences
end HautevilleHouse
