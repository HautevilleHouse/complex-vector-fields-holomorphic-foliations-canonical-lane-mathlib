import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure HolomorphicFirstIntegralPackage where
  foliation : Type u
  firstIntegral : Type v
  holomorphicFunction : Prop
  constantOnLeaves : Prop
  levelSetsDefineFoliation : Prop

structure HolomorphicFirstIntegralEvidence (H : HolomorphicFirstIntegralPackage) where
  holomorphicFunctionClosed : H.holomorphicFunction
  constantOnLeavesClosed : H.constantOnLeaves
  levelSetsDefineFoliationClosed : H.levelSetsDefineFoliation

def HolomorphicFirstIntegralClosed (H : HolomorphicFirstIntegralPackage) : Prop :=
  H.holomorphicFunction ∧ H.constantOnLeaves ∧ H.levelSetsDefineFoliation

theorem holomorphic_first_integral_closed_from_evidence
    (H : HolomorphicFirstIntegralPackage) (E : HolomorphicFirstIntegralEvidence H) :
    HolomorphicFirstIntegralClosed H := by
  exact And.intro E.holomorphicFunctionClosed
    (And.intro E.constantOnLeavesClosed E.levelSetsDefineFoliationClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse