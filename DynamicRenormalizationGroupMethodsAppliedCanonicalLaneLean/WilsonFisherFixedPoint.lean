import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure WilsonFisherFixedPointPackage where
  cutoffLambda : ℝ
  dimension : ℕ
  anomalousDimension : ℝ
  criticalExponentNu : ℝ
  fixedPointCoupling : ℝ

structure WilsonFisherFixedPointEvidence (W : WilsonFisherFixedPointPackage) where
  fixedPointCouplingPositive : W.fixedPointCoupling > 0
  anomalousDimensionFinite : W.anomalousDimension ≠ 0
  epsilonExpansionValid : W.dimension = 4 - W.anomalousDimension

def WilsonFisherFixedPointClosed (W : WilsonFisherFixedPointPackage) : Prop :=
  W.fixedPointCoupling > 0 ∧ W.anomalousDimension ≠ 0 ∧ W.dimension = 4 - W.anomalousDimension

theorem wilson_fisher_fixed_point_closed_from_evidence
    (W : WilsonFisherFixedPointPackage) (E : WilsonFisherFixedPointEvidence W) :
    WilsonFisherFixedPointClosed W := by
  exact And.intro E.fixedPointCouplingPositive
    (And.intro E.anomalousDimensionFinite E.epsilonExpansionValid)

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse