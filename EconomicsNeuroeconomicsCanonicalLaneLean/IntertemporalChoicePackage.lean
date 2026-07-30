import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure IntertemporalChoicePackage where
  timeHorizon : ℕ
  consumptionStream : ℕ → ℝ
  discountFactor : ℝ
  intertemporalUtility : ℝ
  discountFactorPositive : discountFactor > 0
  intertemporalUtilityDefined : intertemporalUtility = ∑' t : ℕ, (discountFactor ^ t) * (consumptionStream t)

structure IntertemporalChoiceEvidence (I : IntertemporalChoicePackage) where
  discountFactorPositive_closed : I.discountFactorPositive
  intertemporalUtilityDefined_closed : I.intertemporalUtilityDefined

def IntertemporalChoiceClosed (I : IntertemporalChoicePackage) : Prop :=
  I.discountFactorPositive ∧ I.intertemporalUtilityDefined

theorem intertemporal_choice_closed_from_evidence (I : IntertemporalChoicePackage)
    (E : IntertemporalChoiceEvidence I) : IntertemporalChoiceClosed I :=
  And.intro E.discountFactorPositive_closed E.intertemporalUtilityDefined_closed

end HautevilleHouse
end EconomicsNeuroeconomicsCanonicalLaneLean
