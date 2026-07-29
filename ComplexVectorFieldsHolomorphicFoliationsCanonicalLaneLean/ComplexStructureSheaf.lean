import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure ComplexStructurePackage where
  complexManifold : Type u
  complexDim : Nat
  holomorphicAtlas : Prop
  transitionHolomorphic : Prop

structure ComplexStructureEvidence (C : ComplexStructurePackage) where
  complexDimClosed : C.complexDim = 1 ∨ C.complexDim = 2
  holomorphicAtlasClosed : C.holomorphicAtlas
  transitionHolomorphicClosed : C.transitionHolomorphic

def ComplexStructureClosed (C : ComplexStructurePackage) : Prop :=
  (C.complexDim = 1 ∨ C.complexDim = 2) ∧ C.holomorphicAtlas ∧ C.transitionHolomorphic

theorem complex_structure_closed_from_evidence (C : ComplexStructurePackage)
    (E : ComplexStructureEvidence C) : ComplexStructureClosed C := by
  exact And.intro E.complexDimClosed (And.intro E.holomorphicAtlasClosed E.transitionHolomorphicClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse