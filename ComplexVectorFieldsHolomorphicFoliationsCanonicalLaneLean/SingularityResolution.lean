import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure SingularityResolutionPackage where
  singularSet : Type u
  resolutionMap : Type v
  blowupPerformed : Prop
  normalCrossings : Prop
  desingularizationAchieved : Prop

structure SingularityResolutionEvidence (S : SingularityResolutionPackage) where
  blowupPerformedClosed : S.blowupPerformed
  normalCrossingsClosed : S.normalCrossings
  desingularizationAchievedClosed : S.desingularizationAchieved

def SingularityResolutionClosed (S : SingularityResolutionPackage) : Prop :=
  S.blowupPerformed ∧ S.normalCrossings ∧ S.desingularizationAchieved

theorem singularity_resolution_closed_from_evidence
    (S : SingularityResolutionPackage) (E : SingularityResolutionEvidence S) :
    SingularityResolutionClosed S := by
  exact And.intro E.blowupPerformedClosed
    (And.intro E.normalCrossingsClosed E.desingularizationAchievedClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse