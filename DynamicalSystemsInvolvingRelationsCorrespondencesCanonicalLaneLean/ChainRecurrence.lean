import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.RelationDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure ChainRecurrence (D : DynamicalSystem) where
  epsilonChain : D.stateSpace → D.stateSpace → Prop
  chainRecurrentSet : Set D.stateSpace
  epsilonChainProperty : Prop
  recurrenceClosedness : Prop

def ChainRecurrenceClosed (C : ChainRecurrence D) : Prop :=
  C.epsilonChainProperty ∧ C.recurrenceClosedness

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse