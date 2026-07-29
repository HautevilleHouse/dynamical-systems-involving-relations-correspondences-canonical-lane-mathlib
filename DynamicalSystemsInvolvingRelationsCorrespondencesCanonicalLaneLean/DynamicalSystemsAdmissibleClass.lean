import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure DynamicalAdmissibleObject where
  space : Type u
  relation : space → space → Prop
  correspondence : space → Set (space)
  evolutionClosed : Prop
  fixedPointProperty : Prop
  conclusion : fixedPointProperty

def dynamcialWitnessClosed (O : DynamicalAdmissibleObject) : Prop :=
  O.fixedPointProperty

structure AdmissibleClass where
  object : DynamicalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  dynamcialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse