import canonicalLaneMathlib.AdmissibleClass
import ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.LeafStability

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure FoliationEndpointPackage {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    {L : LeafStabilityPackage G} (M : LeafStabilityClosed L) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  leafClassification : Prop
  endpointHolomorphicInvariant : Prop
  endpointMatchesFoliationStatement : Prop

structure FoliationEndpointEvidence {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    {L : LeafStabilityPackage G} {M : LeafStabilityClosed L}
    (N : FoliationEndpointPackage M) where
  leafClassificationClosed : N.leafClassification
  endpointHolomorphicInvariantClosed : N.endpointHolomorphicInvariant
  endpointMatchesFoliationStatementClosed : N.endpointMatchesFoliationStatement

def FoliationEndpointClosed {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    {L : LeafStabilityPackage G} {M : LeafStabilityClosed L}
    (N : FoliationEndpointPackage M) : Prop :=
  N.leafClassification ∧ N.endpointHolomorphicInvariant ∧ N.endpointMatchesFoliationStatement

theorem foliation_endpoint_closed_from_evidence {C : ComplexStructurePackage} {Z : ComplexStructureClosed C}
    {V : HolomorphicVectorFieldPackage Z} {W : HolomorphicVectorFieldClosed V}
    {F : FrobeniusIntegrabilityPackage W} {G : FrobeniusIntegrabilityClosed F}
    {L : LeafStabilityPackage G} {M : LeafStabilityClosed L}
    (N : FoliationEndpointPackage M) (E : FoliationEndpointEvidence N) :
    FoliationEndpointClosed N := by
  exact And.intro E.leafClassificationClosed (And.intro E.endpointHolomorphicInvariantClosed E.endpointMatchesFoliationStatementClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse