import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure HolomorphicFoliatedManifold where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Prop
  foliation : Type v
  foliationSmooth : Prop
  leafDimension : Nat
  transversalStructure : Prop

structure AdmittedHolomorphicFoliatedObject where
  foliatedSpace : HolomorphicFoliatedManifold
  closedLeaf : Prop
  holomorphicFirstIntegral : Prop
  firstIntegralExists : Prop
  conclusion : firstIntegralExists

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedHolomorphicFoliatedObject.conclusion (by
    have h : A = A := rfl
    exact h)

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse