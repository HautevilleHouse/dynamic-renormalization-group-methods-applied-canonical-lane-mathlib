import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure WilsonianActionFlow where
  momentumCutoff : ℝ
  bareAction : ℝ → ℝ
  effectiveAction : ℝ → ℝ → ℝ
  flowEquation : Prop
  flowEquationClosed : flowEquation

structure WilsonianActionFlowEvidence (W : WilsonianActionFlow) where
  flowEquationSatisfied : W.flowEquation

def WilsonianActionFlowClosed (W : WilsonianActionFlow) : Prop :=
  W.flowEquation

theorem wilsonian_action_flow_closed_from_evidence (W : WilsonianActionFlow) (E : WilsonianActionFlowEvidence W) : WilsonianActionFlowClosed W := by
  exact E.flowEquationSatisfied

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse