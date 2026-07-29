import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure FieldTheoreticRGPackage (A : AdmissibleClass) where
  wilsonFisherFixedDimension : Prop
  epsilonExpansion : Prop
  criticalExponents : Prop
  universalityClass : Prop

structure FieldTheoreticRGEvidence {A : AdmissibleClass} (P : FieldTheoreticRGPackage A) where
  wilsonFisherFixedDimensionClosed : P.wilsonFisherFixedDimension
  epsilonExpansionClosed : P.epsilonExpansion
  criticalExponentsClosed : P.criticalExponents
  universalityClassClosed : P.universalityClass

def FieldTheoreticRGClosed {A : AdmissibleClass} (P : FieldTheoreticRGPackage A) : Prop :=
  P.wilsonFisherFixedDimension ∧ P.epsilonExpansion ∧ P.criticalExponents ∧ P.universalityClass

theorem field_theoretic_rg_closed_from_evidence
    {A : AdmissibleClass} (P : FieldTheoreticRGPackage A) (E : FieldTheoreticRGEvidence P) :
    FieldTheoreticRGClosed P := by
  exact And.intro E.wilsonFisherFixedDimensionClosed
    (And.intro E.epsilonExpansionClosed
      (And.intro E.criticalExponentsClosed E.universalityClassClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse