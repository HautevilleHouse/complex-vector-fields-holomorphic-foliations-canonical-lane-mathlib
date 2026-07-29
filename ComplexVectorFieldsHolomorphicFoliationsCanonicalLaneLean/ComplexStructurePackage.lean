import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure ComplexStructurePackage where
  complexManifold : Type u
  topology : TopologicalSpace complexManifold
  complexAtlas : Type v
  holomorphicCharts : Prop
  holomorphicTransition : Prop
  complexDimension : Nat
  complexDimensionOne : Prop

def ComplexStructureClosed (C : ComplexStructurePackage) : Prop :=
  C.holomorphicCharts ∧ C.holomorphicTransition ∧ C.complexDimensionOne

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse