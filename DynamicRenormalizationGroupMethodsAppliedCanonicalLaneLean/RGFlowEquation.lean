import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure RGFlowEquationPackage where
  betaFunction : ℝ → ℝ
  couplingConstant : ℝ
  energyScale : ℝ
  flowDerivative : ℝ
  fixedPointCondition : Prop

structure RGFlowEquationEvidence (R : RGFlowEquationPackage) where
  betaFunctionDerived : ∀ x, R.betaFunction x = -R.flowDerivative * x + R.flowDerivative * R.couplingConstant
  fixedPointConditionClosed : R.fixedPointCondition
  energyScalePositive : R.energyScale > 0

def RGFlowEquationClosed (R : RGFlowEquationPackage) : Prop :=
  (∀ x, R.betaFunction x = -R.flowDerivative * x + R.flowDerivative * R.couplingConstant) ∧
  R.fixedPointCondition ∧ R.energyScale > 0

theorem rg_flow_equation_closed_from_evidence
    (R : RGFlowEquationPackage) (E : RGFlowEquationEvidence R) :
    RGFlowEquationClosed R := by
  exact And.intro E.betaFunctionDerived
    (And.intro E.fixedPointConditionClosed E.energyScalePositive)

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse