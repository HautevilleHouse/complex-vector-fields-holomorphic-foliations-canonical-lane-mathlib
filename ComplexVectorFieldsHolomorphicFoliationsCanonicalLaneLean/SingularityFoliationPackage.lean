import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure SingularityFoliationPackage {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} {F : FoliationsPackage C V} where
  singularSet : Type u
  singularSetAnalytic : Prop
  canonicalExtension : Prop
  resolutionExists : Prop
  singularSetAnalyticClosed : singularSetAnalytic
  canonicalExtensionClosed : canonicalExtension
  resolutionExistsClosed : resolutionExists

def SingularityFoliationClosed {C : ComplexStructurePackage} {V : HolomorphicVectorFieldPackage C} {F : FoliationsPackage C V} (S : SingularityFoliationPackage C V F) : Prop :=
  S.singularSetAnalytic ∧ S.canonicalExtension ∧ S.resolutionExists

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse