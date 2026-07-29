import canonicalLaneMathlib.AdmissibleClass
import ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.FrobeniusIntegrability

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure LeafStabilityPackage {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} (G : FrobeniusIntegrabilityClosed F) where
  leafHolomorphicRigidity : Prop
  leafConvergenceUnderFlow : Prop
  leafBoundaryCompactness : Prop
  leafHarmonicMeasure : Prop

structure LeafStabilityEvidence {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    (L : LeafStabilityPackage G) where
  leafHolomorphicRigidityClosed : L.leafHolomorphicRigidity
  leafConvergenceUnderFlowClosed : L.leafConvergenceUnderFlow
  leafBoundaryCompactnessClosed : L.leafBoundaryCompactness
  leafHarmonicMeasureClosed : L.leafHarmonicMeasure

def LeafStabilityClosed {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    (L : LeafStabilityPackage G) : Prop :=
  L.leafHolomorphicRigidity ∧ L.leafConvergenceUnderFlow ∧ L.leafBoundaryCompactness ∧ L.leafHarmonicMeasure

theorem leaf_stability_closed_from_evidence {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    (L : LeafStabilityPackage G) (E : LeafStabilityEvidence L) : LeafStabilityClosed L := by
  exact And.intro E.leafHolomorphicRigidityClosed
    (And.intro E.leafConvergenceUnderFlowClosed
      (And.intro E.leafBoundaryCompactnessClosed E.leafHarmonicMeasureClosed))

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse