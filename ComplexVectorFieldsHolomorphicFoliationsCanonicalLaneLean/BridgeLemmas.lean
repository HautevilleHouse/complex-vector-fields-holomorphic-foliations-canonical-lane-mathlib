import ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse