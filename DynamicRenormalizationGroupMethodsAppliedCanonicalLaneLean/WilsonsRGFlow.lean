import canonicalLaneMathlib.AdmissibleClass
import DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean.FixedPointAnalysis

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure WilsonsRGFlowPackage {FP : FixedPointAnalysisPackage} where
  momentumShellIntegration : Prop
  exactRGEquation : Prop
  betaFunctionDerived : Prop
  fixedPointIdentification : FP

structure WilsonsRGFlowEvidence {FP : FixedPointAnalysisPackage} (W : WilsonsRGFlowPackage FP) where
  momentumShellIntegrationClosed : W.momentumShellIntegration
  exactRGEquationClosed : W.exactRGEquation
  betaFunctionDerivedClosed : W.betaFunctionDerived
  fixedPointIdentificationEvidence : FixedPointAnalysisEvidence W.fixedPointIdentification

def WilsonsRGFlowClosed {FP : FixedPointAnalysisPackage} (W : WilsonsRGFlowPackage FP) : Prop :=
  W.momentumShellIntegration ∧ W.exactRGEquation ∧ W.betaFunctionDerived ∧ FixedPointAnalysisClosed W.fixedPointIdentification

theorem wilsons_rg_flow_closed_from_evidence {FP : FixedPointAnalysisPackage} (W : WilsonsRGFlowPackage FP) (E : WilsonsRGFlowEvidence W) : WilsonsRGFlowClosed W := by
  exact And.intro E.momentumShellIntegrationClosed (And.intro E.exactRGEquationClosed (And.intro E.betaFunctionDerivedClosed (fixed_point_analysis_closed_from_evidence W.fixedPointIdentification E.fixedPointIdentificationEvidence)))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse