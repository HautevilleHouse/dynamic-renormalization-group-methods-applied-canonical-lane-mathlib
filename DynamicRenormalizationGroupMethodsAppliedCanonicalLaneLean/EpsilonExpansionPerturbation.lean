import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure EpsilonExpansionPerturbation where
  expansionOrder : ℕ
  fixedPointCorrection : ℝ → ℝ
  criticalExponentCorrection : ℝ → ℝ
  perturbationConvergence : Prop
  perturbationConvergenceClosed : perturbationConvergence

structure EpsilonExpansionPerturbationEvidence (E : EpsilonExpansionPerturbation) where
  perturbationConvergenceSatisfied : E.perturbationConvergence

def EpsilonExpansionPerturbationClosed (E : EpsilonExpansionPerturbation) : Prop :=
  E.perturbationConvergence

theorem epsilon_expansion_perturbation_closed_from_evidence (E : EpsilonExpansionPerturbation) (Ev : EpsilonExpansionPerturbationEvidence E) : EpsilonExpansionPerturbationClosed E := by
  exact Ev.perturbationConvergenceSatisfied

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse