import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure RelationCorrespondenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  relation : carrier → carrier → Prop
  correspondence : carrier → Set (carrier × carrier)
  relation_compatible : ∀ x y, relation x y ↔ (x, y) ∈ correspondence x

structure RelationCorrespondenceAdmittedObject where
  space : RelationCorrespondenceSpace
  invariantMeasure : Set (carrier → ℝ)
  closureProperty : Prop
  witness : closureProperty

def RelationCorrespondenceWitnessClosed (O : RelationCorrespondenceAdmittedObject) : Prop :=
  O.closureProperty

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse