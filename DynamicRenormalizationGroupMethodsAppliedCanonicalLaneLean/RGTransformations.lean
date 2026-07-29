import canonicalLaneMathlib.AdmissibleClass

/-!
# Renormalization Group Transformations Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure RGTransformationPackage where
  initialHamiltonian : Type u
  renormalizedHamiltonian : Type v
  coarseGrainingMap : Prop
  rescalingOperation : Prop
  fixedPointExistence : Prop
  perturbationExpansion : Prop

structure RGTransformationEvidence (P : RGTransformationPackage) where
  coarseGrainingMapClosed : P.coarseGrainingMap
  rescalingOperationClosed : P.rescalingOperation
  fixedPointExistenceClosed : P.fixedPointExistence
  perturbationExpansionClosed : P.perturbationExpansion

def RGTransformationClosed (P : RGTransformationPackage) : Prop :=
  P.coarseGrainingMap ∧ P.rescalingOperation ∧ P.fixedPointExistence ∧ P.perturbationExpansion

theorem rg_transformation_closed_from_evidence (P : RGTransformationPackage)
    (E : RGTransformationEvidence P) : RGTransformationClosed P := by
  exact And.intro E.coarseGrainingMapClosed
    (And.intro E.rescalingOperationClosed
      (And.intro E.fixedPointExistenceClosed E.perturbationExpansionClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse