import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure UniformizationPackage {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} {F : FoliationsPackage C V} {S : SingularityFoliationPackage C V F} where
  leafUniformization : Prop
  hyperbolicMetric : Prop
  teichmuellerSpace : Type u
  leafUniformizationClosed : leafUniformization
  hyperbolicMetricClosed : hyperbolicMetric

def UniformizationClosed {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} {F : FoliationsPackage C V} {S : SingularityFoliationPackage C V F} (U : UniformizationPackage C V F S) : Prop :=
  U.leafUniformization ∧ U.hyperbolicMetric

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse