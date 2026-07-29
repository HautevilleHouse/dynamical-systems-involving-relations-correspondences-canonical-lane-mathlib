import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.CorrespondenceFlow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure AttractorSet {D : DynamicalSystem} (F : CorrespondenceFlow D) where
  attractor : Set D.stateSpace
  invarianceUnderFlow : Prop
  attractionProperty : Prop

def AttractorSetClosed {D : DynamicalSystem} {F : CorrespondenceFlow D} (A : AttractorSet F) : Prop :=
  A.invarianceUnderFlow ∧ A.attractionProperty

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse