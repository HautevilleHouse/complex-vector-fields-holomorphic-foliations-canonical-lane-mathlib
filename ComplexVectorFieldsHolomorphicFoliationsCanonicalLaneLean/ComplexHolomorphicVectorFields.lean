import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure ComplexHolomorphicVectorFieldPackage where
  manifold : Type u
  complexStructure : Type v
  almostComplexIntegrable : Prop
  holomorphicVectorField : Type w
  cauchyRiemannEquations : Prop
  vectorFieldHolomorphic : Prop

structure ComplexHolomorphicVectorFieldEvidence (P : ComplexHolomorphicVectorFieldPackage) where
  almostComplexIntegrableClosed : P.almostComplexIntegrable
  cauchyRiemannEquationsClosed : P.cauchyRiemannEquations
  vectorFieldHolomorphicClosed : P.vectorFieldHolomorphic

def ComplexHolomorphicVectorFieldClosed (P : ComplexHolomorphicVectorFieldPackage) : Prop :=
  P.almostComplexIntegrable ∧ P.cauchyRiemannEquations ∧ P.vectorFieldHolomorphic

theorem complex_holomorphic_vector_field_closed_from_evidence
    (P : ComplexHolomorphicVectorFieldPackage) (E : ComplexHolomorphicVectorFieldEvidence P) :
    ComplexHolomorphicVectorFieldClosed P := by
  exact And.intro E.almostComplexIntegrableClosed
    (And.intro E.cauchyRiemannEquationsClosed E.vectorFieldHolomorphicClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse