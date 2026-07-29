import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure DynamicalRGPackage (A : AdmissibleClass) where
  modelA : Prop
  modelB : Prop
  modelC : Prop
  criticalDynamics : Prop

structure DynamicalRGEvidence {A : AdmissibleClass} (P : DynamicalRGPackage A) where
  modelAClosed : P.modelA
  modelBClosed : P.modelB
  modelCClosed : P.modelC
  criticalDynamicsClosed : P.criticalDynamics

def DynamicalRGClosed {A : AdmissibleClass} (P : DynamicalRGPackage A) : Prop :=
  P.modelA ∧ P.modelB ∧ P.modelC ∧ P.criticalDynamics

theorem dynamical_rg_closed_from_evidence
    {A : AdmissibleClass} (P : DynamicalRGPackage A) (E : DynamicalRGEvidence P) :
    DynamicalRGClosed P := by
  exact And.intro E.modelAClosed
    (And.intro E.modelBClosed
      (And.intro E.modelCClosed E.criticalDynamicsClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse