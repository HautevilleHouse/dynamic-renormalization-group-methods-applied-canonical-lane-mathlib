import canonicalLaneMathlib.AdmissibleClass

/-!
# Critical Exponents Package
-/

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure CriticalExponentsPackage where
  correlationLengthExponent : Prop
  susceptibilityExponent : Prop
  specificHeatExponent : Prop
  scalingRelations : Prop
  epsilonExpansion : Prop

structure CriticalExponentsEvidence (C : CriticalExponentsPackage) where
  correlationLengthExponentClosed : C.correlationLengthExponent
  susceptibilityExponentClosed : C.susceptibilityExponent
  specificHeatExponentClosed : C.specificHeatExponent
  scalingRelationsClosed : C.scalingRelations
  epsilonExpansionClosed : C.epsilonExpansion

def CriticalExponentsClosed (C : CriticalExponentsPackage) : Prop :=
  C.correlationLengthExponent ∧ C.susceptibilityExponent ∧
  C.specificHeatExponent ∧ C.scalingRelations ∧ C.epsilonExpansion

theorem critical_exponents_closed_from_evidence (C : CriticalExponentsPackage)
    (E : CriticalExponentsEvidence C) : CriticalExponentsClosed C := by
  exact And.intro E.correlationLengthExponentClosed
    (And.intro E.susceptibilityExponentClosed
      (And.intro E.specificHeatExponentClosed
        (And.intro E.scalingRelationsClosed E.epsilonExpansionClosed)))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse