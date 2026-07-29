import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure DynamicRenormalizationGroupPackage where
  momentumShell : Type
  cutoffFunction : Type
  flowEquation : Prop
  betaFunction : Prop
  fixedPointAnalysis : Prop
  epsilonExpansion : Prop
  criticalExponents : Prop
  irrelevantPerturbations : Prop

structure DynamicRenormalizationGroupEvidence (P : DynamicRenormalizationGroupPackage) where
  flowEquationClosed : P.flowEquation
  betaFunctionClosed : P.betaFunction
  fixedPointAnalysisClosed : P.fixedPointAnalysis
  epsilonExpansionClosed : P.epsilonExpansion
  criticalExponentsClosed : P.criticalExponents
  irrelevantPerturbationsClosed : P.irrelevantPerturbations

def DynamicRenormalizationGroupClosed (P : DynamicRenormalizationGroupPackage) : Prop :=
  P.flowEquation ∧ P.betaFunction ∧ P.fixedPointAnalysis ∧
  P.epsilonExpansion ∧ P.criticalExponents ∧ P.irrelevantPerturbations

theorem dynamic_renormalization_group_closed_from_evidence (P : DynamicRenormalizationGroupPackage)
  (E : DynamicRenormalizationGroupEvidence P) : DynamicRenormalizationGroupClosed P := by
  exact And.intro E.flowEquationClosed
    (And.intro E.betaFunctionClosed
      (And.intro E.fixedPointAnalysisClosed
        (And.intro E.epsilonExpansionClosed
          (And.intro E.criticalExponentsClosed E.irrelevantPerturbationsClosed))))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse