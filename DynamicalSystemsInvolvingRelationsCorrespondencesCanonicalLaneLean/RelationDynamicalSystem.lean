import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  relation : stateSpace → stateSpace → Prop

def DynamicalSystemCarrier (D : DynamicalSystem) : Type u := D.stateSpace

instance (D : DynamicalSystem) : TopologicalSpace D.stateSpace := D.stateTopology

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse