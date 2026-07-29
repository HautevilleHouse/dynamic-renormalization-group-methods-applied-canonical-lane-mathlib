import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure MomentumShellRGPackage (A : AdmissibleClass) where
  sharpCutoff : Prop
  modeElimination : Prop
  betaFunction : Prop
  flowEquation : Prop

structure MomentumShellRGEvidence {A : AdmissibleClass} (P : MomentumShellRGPackage A) where
  sharpCutoffClosed : P.sharpCutoff
  modeEliminationClosed : P.modeElimination
  betaFunctionClosed : P.betaFunction
  flowEquationClosed : P.flowEquation

def MomentumShellRGClosed {A : AdmissibleClass} (P : MomentumShellRGPackage A) : Prop :=
  P.sharpCutoff ∧ P.modeElimination ∧ P.betaFunction ∧ P.flowEquation

theorem momentum_shell_rg_closed_from_evidence
    {A : AdmissibleClass} (P : MomentumShellRGPackage A) (E : MomentumShellRGEvidence P) :
    MomentumShellRGClosed P := by
  exact And.intro E.sharpCutoffClosed
    (And.intro E.modeEliminationClosed
      (And.intro E.betaFunctionClosed E.flowEquationClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse