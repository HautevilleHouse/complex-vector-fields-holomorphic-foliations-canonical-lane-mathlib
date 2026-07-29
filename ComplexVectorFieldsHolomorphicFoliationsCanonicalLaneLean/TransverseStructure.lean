import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure TransverseHolomorphicStructure where
  transversalType : Type u
  holonomyPseudogroup : Type v
  transverseRigidity : Prop
  pseudogroupInvariant : Prop
  transverseHolonomyClosed : Prop

structure TransverseStructureEvidence (T : TransverseHolomorphicStructure) where
  transverseRigidityClosed : T.transverseRigidity
  pseudogroupInvariantClosed : T.pseudogroupInvariant
  transverseHolonomyClosedClosed : T.transverseHolonomyClosed

def TransverseStructureClosed (T : TransverseHolomorphicStructure) : Prop :=
  T.transverseRigidity ∧ T.pseudogroupInvariant ∧ T.transverseHolonomyClosed

theorem transverse_structure_closed_from_evidence (T : TransverseHolomorphicStructure) (E : TransverseStructureEvidence T) : TransverseStructureClosed T :=
  And.intro E.transverseRigidityClosed (And.intro E.pseudogroupInvariantClosed E.transverseHolonomyClosedClosed)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse