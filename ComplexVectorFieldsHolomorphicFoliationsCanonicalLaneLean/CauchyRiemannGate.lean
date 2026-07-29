import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure CauchyRiemannData where
  complexChart : Type u
  cauchyRiemannOperator : Type v
  ellipticRegularity : Prop
  kernelDimension : Nat
  compatibilityWithFoliation : Prop

structure CauchyRiemannGate where
  data : CauchyRiemannData
  crClosed : Prop
  crClosedWitness : crClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse