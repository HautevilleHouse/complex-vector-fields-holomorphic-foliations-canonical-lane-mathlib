import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.ComplexVectorFieldBridges

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

def ConstrainedComplexFoliationsClosure
    (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complex_foliations_endgame
    (A : AdmissibleClass) :
    ConstrainedComplexFoliationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse