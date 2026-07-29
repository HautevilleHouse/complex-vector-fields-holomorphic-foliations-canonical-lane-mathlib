import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure LeafClassificationPackage where
  foliation : Type u
  leafSpace : Type v
  leafHolonomy : Prop
  closedLeaf : Prop
  denseLeaf : Prop
  classificationComplete : Prop

structure LeafClassificationEvidence (L : LeafClassificationPackage) where
  leafHolonomyClosed : L.leafHolonomy
  closedLeafClosed : L.closedLeaf
  denseLeafClosed : L.denseLeaf
  classificationCompleteClosed : L.classificationComplete

def LeafClassificationClosed (L : LeafClassificationPackage) : Prop :=
  L.leafHolonomy ∧ L.closedLeaf ∧ L.denseLeaf ∧ L.classificationComplete

theorem leaf_classification_closed_from_evidence
    (L : LeafClassificationPackage) (E : LeafClassificationEvidence L) :
    LeafClassificationClosed L := by
  exact And.intro E.leafHolonomyClosed
    (And.intro E.closedLeafClosed
      (And.intro E.denseLeafClosed E.classificationCompleteClosed))

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse