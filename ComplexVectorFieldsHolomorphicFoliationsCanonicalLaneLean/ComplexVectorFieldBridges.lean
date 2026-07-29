import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.ComplexStructure
import HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations

/-!
# Complex Vector Field Bridges

The bridge and gate lemmas for the complex vector fields and holomorphic
foliations domain. BridgeClosed is interpreted as the existence of a holomorphic
vector field generating the foliation, and gateClosed corresponds to the
global holomorphic trivialization of the tangent bundle along leaves.
-/

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def holomorphicVectorFieldGenerator (X : HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) : Prop :=
  X.leafSubmersionAvailable ∧ X.localTrivializationHolomorphic

lemma holomorphic_vector_field_generator_is_bridge
    (X : HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    holomorphicVectorFieldGenerator X →
    FoliativeBridgeClosed X := by
  intro h
  exact h.1

lemma holomorphic_vector_field_generator_is_gate
    (X : HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    holomorphicVectorFieldGenerator X →
    FoliativeGateClosed X := by
  intro h
  exact h.2

theorem bridge_from_holomorphic_vector_field_generator
    (X : HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    FoliativeBridgeClosed X := by
  exact X.leafSubmersionTerm

theorem gate_from_holomorphic_vector_field_generator
    (X : HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    FoliativeGateClosed X := by
  exact X.localTrivializationTerm

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse