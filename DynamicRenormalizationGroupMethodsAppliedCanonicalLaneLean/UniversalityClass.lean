import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure UniversalityClassPackage where
  classLabel : String
  criticalExponents : CriticalExponentsPackage
  fixedPoint : WilsonFisherFixedPointPackage
  rgFlow : RGFlowEquationPackage
  universalityClaim : Prop

structure UniversalityClassEvidence (U : UniversalityClassPackage) where
  criticalExponentsClosed : CriticalExponentsClosed U.criticalExponents
  fixedPointClosed : WilsonFisherFixedPointClosed U.fixedPoint
  rgFlowClosed : RGFlowEquationClosed U.rgFlow
  universalityClaimClosed : U.universalityClaim

def UniversalityClassClosed (U : UniversalityClassPackage) : Prop :=
  CriticalExponentsClosed U.criticalExponents ∧
  WilsonFisherFixedPointClosed U.fixedPoint ∧
  RGFlowEquationClosed U.rgFlow ∧
  U.universalityClaim

theorem universality_class_closed_from_evidence
    (U : UniversalityClassPackage) (E : UniversalityClassEvidence U) :
    UniversalityClassClosed U := by
  exact And.intro E.criticalExponentsClosed
    (And.intro E.fixedPointClosed
      (And.intro E.rgFlowClosed E.universalityClaimClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse