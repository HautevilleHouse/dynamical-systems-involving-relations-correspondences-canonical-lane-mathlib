import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace → Prop
  initial : stateSpace
  isFunctional : Prop

structure RelationCorrespondence where
  domain : Type u
  codomain : Type v
  relation : domain → codomain → Prop
  upperHemicontinuous : Prop
  lowerHemicontinuous : Prop
  closedGraph : Prop

structure DynamicalSystemAdmittedObject where
  system : DynamicalSystem
  correspondence : RelationCorrespondence
  invariantSet : Prop
  attractorExists : Prop
  conclusion : attractorExists

def DynamicalWitnessClosed (O : DynamicalSystemAdmittedObject) : Prop :=
  O.attractorExists

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse