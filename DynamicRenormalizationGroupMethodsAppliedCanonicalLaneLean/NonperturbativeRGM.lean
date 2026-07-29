import canonicalLaneMathlib.AdmissibleClass
import DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean.PerturbativeBetaFunctions

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure NonperturbativeRGPackage {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} {P : PerturbativeBetaFunctionsPackage FP W} where
  functionalRGEquation : Prop
  derivativeExpansion : Prop
  convergenceCriteria : Prop
  criticalPhenomenaExtracted : Prop

structure NonperturbativeRGEvidence {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} {P : PerturbativeBetaFunctionsPackage FP W} (N : NonperturbativeRGPackage FP W P) where
  functionalRGEquationClosed : N.functionalRGEquation
  derivativeExpansionClosed : N.derivativeExpansion
  convergenceCriteriaClosed : N.convergenceCriteria
  criticalPhenomenaExtractedClosed : N.criticalPhenomenaExtracted

def NonperturbativeRGClosed {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} {P : PerturbativeBetaFunctionsPackage FP W} (N : NonperturbativeRGPackage FP W P) : Prop :=
  N.functionalRGEquation ∧ N.derivativeExpansion ∧ N.convergenceCriteria ∧ N.criticalPhenomenaExtracted

theorem nonperturbative_rg_closed_from_evidence {FP : FixedPointAnalysisPackage} {W : WilsonsRGFlowPackage FP} {P : PerturbativeBetaFunctionsPackage FP W} (N : NonperturbativeRGPackage FP W P) (E : NonperturbativeRGEvidence N) : NonperturbativeRGClosed N := by
  exact And.intro E.functionalRGEquationClosed (And.intro E.derivativeExpansionClosed (And.intro E.convergenceCriteriaClosed E.criticalPhenomenaExtractedClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse