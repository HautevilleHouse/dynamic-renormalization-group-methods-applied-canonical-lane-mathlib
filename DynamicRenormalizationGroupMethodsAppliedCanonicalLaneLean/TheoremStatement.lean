import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

structure RenormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RenormalizationAdmittedObject where
  space : RenormalizationSpace
  criticalExponent : Prop
  fixedPointUniqueness : Prop
  boundaryFieldModel : Type
  boundaryFieldTopology : TopologicalSpace boundaryFieldModel
  equivalenceToFixedPoint : Prop
  conclusion : equivalenceToFixedPoint

def RenormalizationWitnessClosed (O : RenormalizationAdmittedObject) : Prop :=
  O.equivalenceToFixedPoint

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse