import EconomicsNeuroeconomicsCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type u
  utilityRepresentation : Type v
  expectedUtility : Prop
  riskAversion : Prop
  timePreference : Prop

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.expectedUtility ∧ U.riskAversion ∧ U.timePreference

theorem utility_theory_closed (U : UtilityTheoryPackage) : UtilityTheoryClosed U :=
  And.intro U.expectedUtility (And.intro U.riskAversion U.timePreference)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse