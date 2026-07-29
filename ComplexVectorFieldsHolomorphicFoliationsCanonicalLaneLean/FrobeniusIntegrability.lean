import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure FrobeniusIntegrabilityPackage where
  complexDistribution : Type u
  involutiveCondition : Prop
  leafSpaceDimension : Nat
  frobeniusTheoremApplied : Prop
  foliationConstructed : Prop

structure FrobeniusIntegrabilityEvidence (F : FrobeniusIntegrabilityPackage) where
  involutiveConditionClosed : F.involutiveCondition
  frobeniusTheoremAppliedClosed : F.frobeniusTheoremApplied
  foliationConstructedClosed : F.foliationConstructed

def FrobeniusIntegrabilityClosed (F : FrobeniusIntegrabilityPackage) : Prop :=
  F.involutiveCondition ∧ F.frobeniusTheoremApplied ∧ F.foliationConstructed

theorem frobenius_integrability_closed_from_evidence (F : FrobeniusIntegrabilityPackage) (E : FrobeniusIntegrabilityEvidence F) : FrobeniusIntegrabilityClosed F :=
  And.intro E.involutiveConditionClosed (And.intro E.frobeniusTheoremAppliedClosed E.foliationConstructedClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse