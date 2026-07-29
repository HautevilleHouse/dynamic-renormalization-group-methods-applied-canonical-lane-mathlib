import canonicalLaneMathlib.AdmissibleClass
import DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean.WilsonsRGFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure PerturbativeBetaFunctionsPackage {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} where
  loopExpansion : Prop
  regularizationScheme : Prop
  betaFunctionSeries : Prop
  anomalousDimensions : Prop

structure PerturbativeBetaFunctionsEvidence {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} (P : PerturbativeBetaFunctionsPackage FP W) where
  loopExpansionClosed : P.loopExpansion
  regularizationSchemeClosed : P.regularizationScheme
  betaFunctionSeriesClosed : P.betaFunctionSeries
  anomalousDimensionsClosed : P.anomalousDimensions

def PerturbativeBetaFunctionsClosed {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} (P : PerturbativeBetaFunctionsPackage FP W) : Prop :=
  P.loopExpansion ∧ P.regularizationScheme ∧ P.betaFunctionSeries ∧ P.anomalousDimensions

theorem perturbative_beta_functions_closed_from_evidence {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} (P : PerturbativeBetaFunctionsPackage FP W) (E : PerturbativeBetaFunctionsEvidence P) : PerturbativeBetaFunctionsClosed P := by
  exact And.intro E.loopExpansionClosed (And.intro E.regularizationSchemeClosed (And.intro E.betaFunctionSeriesClosed E.anomalousDimensionsClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse