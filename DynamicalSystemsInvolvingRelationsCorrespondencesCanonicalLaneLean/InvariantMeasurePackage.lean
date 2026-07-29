import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.RelationCorrespondencePackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondences

structure InvariantMeasurePackage {R : RelationCorrespondencePackage} where
  measureSpace : MeasurableSpace R.domainSpace.carrier
  invariantMeasure : MeasureTheory.Measure R.domainSpace.carrier
  invarianceProperty : Prop
  ergodicityProperty : Prop

structure InvariantMeasureEvidence {R : RelationCorrespondencePackage} (I : InvariantMeasurePackage R) where
  invariancePropertyClosed : I.invarianceProperty
  ergodicityPropertyClosed : I.ergodicityProperty

def InvariantMeasureClosed {R : RelationCorrespondencePackage} (I : InvariantMeasurePackage R) : Prop :=
  I.invarianceProperty ∧ I.ergodicityProperty

theorem invariant_measure_closed_from_evidence {R : RelationCorrespondencePackage} (I : InvariantMeasurePackage R) (E : InvariantMeasureEvidence I) : InvariantMeasureClosed I := by
  exact And.intro E.invariancePropertyClosed E.ergodicityPropertyClosed

end DynamicalSystemsInvolvingRelationsCorrespondences
end HautevilleHouse
