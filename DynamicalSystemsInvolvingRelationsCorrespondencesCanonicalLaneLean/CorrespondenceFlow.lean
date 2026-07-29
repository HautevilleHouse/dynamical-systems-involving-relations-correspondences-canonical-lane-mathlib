import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.RelationDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure CorrespondenceFlow (D : DynamicalSystem) where
  time : Type t
  flowMap : D.stateSpace → D.stateSpace
  correspondencePreserved : Prop
  monotonicityProperty : Prop

def CorrespondenceFlowClosed {D : DynamicalSystem} (F : CorrespondenceFlow D) : Prop :=
  F.correspondencePreserved ∧ F.monotonicityProperty

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse