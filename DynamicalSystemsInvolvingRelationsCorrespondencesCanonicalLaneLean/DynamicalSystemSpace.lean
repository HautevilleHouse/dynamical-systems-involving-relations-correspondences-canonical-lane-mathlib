import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondences

structure DynamicalSystemSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  measurableStructure : MeasurableSpace carrier

def DynamicalSystemWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.relationCorrespondenceClosed

end DynamicalSystemsInvolvingRelationsCorrespondences
end HautevilleHouse
