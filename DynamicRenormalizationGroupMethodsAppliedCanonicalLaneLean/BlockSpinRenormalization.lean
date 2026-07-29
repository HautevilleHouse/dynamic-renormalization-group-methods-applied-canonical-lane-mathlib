import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure RealSpaceBlockSpinPackage (A : AdmissibleClass) where
  latticeDecimation : Prop
  blockingTransformation : Prop
  effectiveHamiltonian : Prop
  fixedPointStructure : Prop

structure RealSpaceBlockSpinEvidence {A : AdmissibleClass} (P : RealSpaceBlockSpinPackage A) where
  latticeDecimationClosed : P.latticeDecimation
  blockingTransformationClosed : P.blockingTransformation
  effectiveHamiltonianClosed : P.effectiveHamiltonian
  fixedPointStructureClosed : P.fixedPointStructure

def RealSpaceBlockSpinClosed {A : AdmissibleClass} (P : RealSpaceBlockSpinPackage A) : Prop :=
  P.latticeDecimation ∧ P.blockingTransformation ∧ P.effectiveHamiltonian ∧ P.fixedPointStructure

theorem real_space_block_spin_closed_from_evidence
    {A : AdmissibleClass} (P : RealSpaceBlockSpinPackage A) (E : RealSpaceBlockSpinEvidence P) :
    RealSpaceBlockSpinClosed P := by
  exact And.intro E.latticeDecimationClosed
    (And.intro E.blockingTransformationClosed
      (And.intro E.effectiveHamiltonianClosed E.fixedPointStructureClosed))

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse