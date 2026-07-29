import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure FunctionalRGPackage (A : AdmissibleClass) where
  wegnerHoughtonEquation : Prop
  derivativeExpansion : Prop
  anomalousDimension : Prop
  globalFlowDiagram : Prop

structure FunctionalRGEvidence {A : AdmissibleClass} (P : FunctionalRGPackage A) where
  wegnerHoughtonEquationClosed : P.wegnerHoughtonEquation
  derivativeExpansionClosed : P.derivativeExpansion
  anomalousDimensionClosed : P.anomalousDimension
  globalFlowDiagramClosed : P.globalFlowDiagram

def FunctionalRGClosed {A : AdmissibleClass} (P : FunctionalRGPackage A) : Prop :=
  P.wegnerHoughtonEquation ∧ P.derivativeExpansion ∧ P.anomalousDimension ∧ P.globalFlowDiagram

theorem functional_rg_closed_from_evidence
    {A : AdmissibleClass} (P : FunctionalRGPackage A) (E : FunctionalRGEvidence P) :
    FunctionalRGClosed P := by
  exact And.intro E.wegnerHoughtonEquationClosed
    (And.intro E.derivativeExpansionClosed
      (And.intro E.anomalousDimensionClosed E.globalFlowDiagramClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse