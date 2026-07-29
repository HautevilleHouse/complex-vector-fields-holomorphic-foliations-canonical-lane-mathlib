import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure FoliationsPackage {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} where
  leafSpace : Type u
  foliationDimension : Nat
  holonomyGroupoid : Type v
  integrability : Prop
  hausdorffLeafSpace : Prop
  holonomyGroupoidSmooth : Prop
  integrabilityClosed : integrability
  hausdorffLeafSpaceClosed : hausdorffLeafSpace
  holonomyGroupoidSmoothClosed : holonomyGroupoidSmooth

def FoliationsClosed {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} (F : FoliationsPackage C V) : Prop :=
  F.integrability ∧ F.hausdorffLeafSpace ∧ F.holonomyGroupoidSmooth

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse