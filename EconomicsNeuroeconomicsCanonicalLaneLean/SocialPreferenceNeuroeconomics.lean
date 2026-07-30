import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure SocialPreferencePackage where
  socialContext : Type u
  otherOutcome : ℝ
  ownOutcome : ℝ
  fairnessPreference : ℝ
  reciprocityParameter : ℝ
  inequityAversion : Prop
  reciprocityEffect : Prop
  fairnessConsistency : Bool

structure SocialPreferenceEvidence (S : SocialPreferencePackage) where
  inequityAversionClosed : S.inequityAversion
  reciprocityEffectClosed : S.reciprocityEffect

def SocialPreferenceClosed (S : SocialPreferencePackage) : Prop :=
  S.inequityAversion ∧ S.reciprocityEffect

theorem social_preference_closed_from_evidence
    (S : SocialPreferencePackage) (E : SocialPreferenceEvidence S) :
    SocialPreferenceClosed S := by
  exact And.intro E.inequityAversionClosed E.reciprocityEffectClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse