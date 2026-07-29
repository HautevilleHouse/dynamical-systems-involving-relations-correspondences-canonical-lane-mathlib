import DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure CorrespondenceTopologyPackage (A : AdmissibleClass) where
  upperHemicontinuity : Prop
  lowerHemicontinuity : Prop
  closedGraph : Prop
  compactnessPreserving : Prop

structure CorrespondenceTopologyEvidence {A : AdmissibleClass}
    (C : CorrespondenceTopologyPackage A) where
  upperHemicontinuityClosed : C.upperHemicontinuity
  lowerHemicontinuityClosed : C.lowerHemicontinuity
  closedGraphClosed : C.closedGraph
  compactnessPreservingClosed : C.compactnessPreserving

def CorrespondenceTopologyClosed {A : AdmissibleClass}
    (C : CorrespondenceTopologyPackage A) : Prop :=
  C.upperHemicontinuity ∧ C.lowerHemicontinuity ∧
  C.closedGraph ∧ C.compactnessPreserving

theorem correspondence_topology_closed_from_evidence
    {A : AdmissibleClass} (C : CorrespondenceTopologyPackage A)
    (E : CorrespondenceTopologyEvidence C) :
    CorrespondenceTopologyClosed C := by
  exact And.intro E.upperHemicontinuityClosed
    (And.intro E.lowerHemicontinuityClosed
      (And.intro E.closedGraphClosed E.compactnessPreservingClosed))

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse