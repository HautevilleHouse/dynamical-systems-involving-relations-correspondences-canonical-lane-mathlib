import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.IteratedRelationSystems

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure FixedPointPackage {A : AdmissibleClass} (R : IteratedRelationPackage A) where
  fixedPointSet : Set A.object.space
  attractivity : Prop
  uniqueness : Prop
  stability : Prop

structure FixedPointEvidence {A : AdmissibleClass} {R : IteratedRelationPackage A}
    (F : FixedPointPackage R) where
  attractivityClosed : F.attractivity
  uniquenessClosed : F.uniqueness
  stabilityClosed : F.stability

def FixedPointClosed {A : AdmissibleClass} {R : IteratedRelationPackage A}
    (F : FixedPointPackage R) : Prop :=
  F.attractivity ∧ F.uniqueness ∧ F.stability

theorem fixed_point_closed_from_evidence
    {A : AdmissibleClass} {R : IteratedRelationPackage A}
    (F : FixedPointPackage R) (E : FixedPointEvidence F) :
    FixedPointClosed F := by
  exact And.intro E.attractivityClosed
    (And.intro E.uniquenessClosed E.stabilityClosed)

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse