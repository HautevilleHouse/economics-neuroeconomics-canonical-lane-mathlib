import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure IntertemporalChoiceModel where
  timeHorizon : ℕ
  utilityFlow : ℕ → ℝ → ℝ
  discountFactor : ℝ → ℝ
  exponentialDiscounting : Prop
  hyperbolicDiscounting : Prop
  preferenceReversal : Prop

structure IntertemporalChoiceEvidence (I : IntertemporalChoiceModel) where
  exponentialDiscountingClosed : I.exponentialDiscounting
  hyperbolicDiscountingClosed : I.hyperbolicDiscounting
  preferenceReversalClosed : I.preferenceReversal

def IntertemporalChoiceClosed (I : IntertemporalChoiceModel) : Prop :=
  I.exponentialDiscounting ∧ I.hyperbolicDiscounting ∧ I.preferenceReversal

theorem intertemporal_choice_closed_from_evidence
    (I : IntertemporalChoiceModel) (E : IntertemporalChoiceEvidence I) :
    IntertemporalChoiceClosed I := by
  exact And.intro E.exponentialDiscountingClosed
    (And.intro E.hyperbolicDiscountingClosed E.preferenceReversalClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse