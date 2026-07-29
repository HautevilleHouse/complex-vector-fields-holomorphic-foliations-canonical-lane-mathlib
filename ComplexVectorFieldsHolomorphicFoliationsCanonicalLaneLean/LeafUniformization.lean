import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure LeafUniformizationData where
  leafType : Type u
  universalCover : Type v
  coveringMap : Type w
  monodromyRepresentation : Type x
  uniformizationTheoremApplied : Prop
  leafBiHolomorphicToModel : Prop

structure LeafUniformizationEvidence (L : LeafUniformizationData) where
  uniformizationTheoremClosed : L.uniformizationTheoremApplied
  leafBiHolomorphicToModelClosed : L.leafBiHolomorphicToModel

def LeafUniformizationClosed (L : LeafUniformizationData) : Prop :=
  L.uniformizationTheoremApplied ∧ L.leafBiHolomorphicToModel

theorem leaf_uniformization_closed_from_evidence (L : LeafUniformizationData) (E : LeafUniformizationEvidence L) : LeafUniformizationClosed L :=
  And.intro E.uniformizationTheoremClosed E.leafBiHolomorphicToModelClosed

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse