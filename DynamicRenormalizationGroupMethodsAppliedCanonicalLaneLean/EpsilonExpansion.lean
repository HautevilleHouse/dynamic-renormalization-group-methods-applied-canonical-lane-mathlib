import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure EpsilonExpansionPackage where
  epsilon : ℝ
  dimension : ℕ
  expansionOrder : ℕ
  expansionCoefficients : List ℝ
  convergenceRadius : ℝ

structure EpsilonExpansionEvidence (E : EpsilonExpansionPackage) where
  epsilonPositive : E.epsilon > 0
  convergenceRadiusPositive : E.convergenceRadius > 0
  coefficientsNonEmpty : E.expansionCoefficients.length > 0
  perturbationValid : E.dimension = 4 - E.epsilon

def EpsilonExpansionClosed (E : EpsilonExpansionPackage) : Prop :=
  E.epsilon > 0 ∧ E.convergenceRadius > 0 ∧ E.expansionCoefficients.length > 0 ∧
  E.dimension = 4 - E.epsilon

theorem epsilon_expansion_closed_from_evidence
    (E : EpsilonExpansionPackage) (Ev : EpsilonExpansionEvidence E) :
    EpsilonExpansionClosed E := by
  exact And.intro Ev.epsilonPositive
    (And.intro Ev.convergenceRadiusPositive
      (And.intro Ev.coefficientsNonEmpty Ev.perturbationValid))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse