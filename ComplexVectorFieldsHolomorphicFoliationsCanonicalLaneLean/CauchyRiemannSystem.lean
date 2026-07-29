import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure CauchyRiemannSystem (M : Type u) [TopologicalSpace M] [ComplexManifold M] where
  operator : (M → ℂ) → (M → ℂ)
  elliptic : Prop
  ellipticClosed : elliptic

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse