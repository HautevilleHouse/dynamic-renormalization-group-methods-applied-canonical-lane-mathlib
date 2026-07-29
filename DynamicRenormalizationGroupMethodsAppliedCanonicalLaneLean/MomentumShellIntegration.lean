import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure MomentumShellIntegrationPackage where
  momentumCutoff : ℝ
  shellThickness : ℝ
  effectiveAction : Type u
  renormalizedCoupling : ℝ
  integrationResult : Prop

structure MomentumShellIntegrationEvidence (M : MomentumShellIntegrationPackage) where
  cutoffPositive : M.momentumCutoff > 0
  shellThicknessPositive : M.shellThickness > 0
  integrationResultClosed : M.integrationResult
  renormalizedCouplingPositive : M.renormalizedCoupling > 0

def MomentumShellIntegrationClosed (M : MomentumShellIntegrationPackage) : Prop :=
  M.momentumCutoff > 0 ∧ M.shellThickness > 0 ∧ M.integrationResult ∧ M.renormalizedCoupling > 0

theorem momentum_shell_integration_closed_from_evidence
    (M : MomentumShellIntegrationPackage) (E : MomentumShellIntegrationEvidence M) :
    MomentumShellIntegrationClosed M := by
  exact And.intro E.cutoffPositive
    (And.intro E.shellThicknessPositive
      (And.intro E.integrationResultClosed E.renormalizedCouplingPositive))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse