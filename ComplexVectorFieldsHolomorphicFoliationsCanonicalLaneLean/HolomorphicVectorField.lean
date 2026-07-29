import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure HolomorphicVectorField (M : Type u) [TopologicalSpace M] [ComplexManifold M] where
  field : M → TangentSpace M
  holomorphic : Prop
  holomorphicClosed : holomorphic

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse