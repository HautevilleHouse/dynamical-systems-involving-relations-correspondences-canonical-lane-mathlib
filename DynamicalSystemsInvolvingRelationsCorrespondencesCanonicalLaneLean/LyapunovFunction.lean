import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean.RelationDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean

structure LyapunovFunction (D : DynamicalSystem) where
  functionValue : D.stateSpace → ℝ
  nonincreasingAlongRelation : Prop
  strictDecreaseOutsideSet : Prop

def LyapunovFunctionClosed {D : DynamicalSystem} (L : LyapunovFunction D) : Prop :=
  L.nonincreasingAlongRelation ∧ L.strictDecreaseOutsideSet

end DynamicalSystemsInvolvingRelationsCorrespondencesCanonicalLaneLean
end HautevilleHouse