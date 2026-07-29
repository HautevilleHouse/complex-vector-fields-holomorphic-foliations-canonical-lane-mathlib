import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure HolomorphicVectorFieldPackage (C : ComplexStructurePackage) where
  vectorField : Type w
  holomorphicSections : Prop
  lieBracketDefined : Prop
  cauchyRiemannEquation : Prop
  holomorphicSectionsClosed : holomorphicSections
  lieBracketDefinedClosed : lieBracketDefined
  cauchyRiemannEquationClosed : cauchyRiemannEquation

def HolomorphicVectorFieldClosed {C : ComplexStructurePackage} (V : HolomorphicVectorFieldPackage C) : Prop :=
  V.holomorphicSections ∧ V.lieBracketDefined ∧ V.cauchyRiemannEquation

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse