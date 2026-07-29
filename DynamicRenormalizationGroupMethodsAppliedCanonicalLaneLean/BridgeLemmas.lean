import canonicalLaneMathlib.AdmissibleClass
import DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RenormalizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicRenormalizationGroupMethodsAppliedCanonicalLaneLean
end HautevilleHouse