import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure UtilityPreferencePackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  strictConvexity : Prop

structure UtilityPreferenceEvidence (U : UtilityPreferencePackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  strictConvexityClosed : U.strictConvexity

def UtilityPreferenceClosed (U : UtilityPreferencePackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.strictConvexity

theorem utility_preference_closed_from_evidence
    (U : UtilityPreferencePackage) (E : UtilityPreferenceEvidence U) :
    UtilityPreferenceClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.strictConvexityClosed))

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse