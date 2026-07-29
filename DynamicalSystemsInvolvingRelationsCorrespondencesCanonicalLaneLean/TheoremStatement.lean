import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  dynamicsAdmissible : Prop
  relationClosed : Prop
  correspondenceSatisfiesInclusion : Prop
  conclusion : dynamicsAdmissible ∧ relationClosed ∧ correspondenceSatisfiesInclusion

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.dynamicsAdmissible ∧ O.relationClosed ∧ O.correspondenceSatisfiesInclusion

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse