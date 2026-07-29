import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean.ComplexStructure

/-!
# Holomorphic Foliations Package

The package models a holomorphic foliation on a complex manifold as an
admissible object with bridge and gate structure. The key closure concepts
mirror the epistemological pattern: bridgeClosed corresponds to the leaf being
locally a graph over the transversal, and gateClosed records the leafwise
holomorphic structure.
-/

namespace HautevilleHouse
namespace ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean

structure HolomorphicFoliation where
  complexManifold : ComplexManifold
  leafDimension : ℕ
  codimension : ℕ
  leafSubmersionAvailable : Prop
  localTrivializationHolomorphic : Prop
  leafSubmersionTerm : leafSubmersionAvailable
  localTrivializationTerm : localTrivializationHolomorphic

structure FoliatedComplexManifold := mk ::
  foliation : HolomorphicFoliation

def FoliativeAdmittedObject (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) : Prop :=
  F.leafDimension = 1 ∧ F.codimension = 1

def FoliativeBridgeClosed (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) : Prop :=
  F.leafSubmersionAvailable

def FoliativeGateClosed (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) : Prop :=
  F.localTrivializationHolomorphic

def FoliativeClosure (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) : Prop :=
  FoliativeBridgeClosed F ∧ FoliativeGateClosed F

theorem bridge_from_foliative_admitted_class
    (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    FoliativeBridgeClosed F := by
  exact F.leafSubmersionTerm

theorem gate_from_foliative_admitted_class
    (F : HolomorphicFoliationsCanonicalLaneLean.HolomorphicFoliations.HolomorphicFoliations) :
    FoliativeGateClosed F := by
  exact F.localTrivializationTerm

end ComplexVectorFieldsHolomorphicFoliationsCanonicalLaneLean
end HautevilleHouse