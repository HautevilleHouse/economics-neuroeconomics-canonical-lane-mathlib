import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure IntertemporalChoicePackage where
  timeHorizon : ℕ
  discountFactor : ℝ
  delayedUtility : ℕ → ℝ
  preferenceConsistency : Prop
  exponentialDiscounting : Prop
  hyperbolicDiscounting : Bool
  quasiHyperbolicParameters : ℝ × ℝ

structure IntertemporalChoiceEvidence (I : IntertemporalChoicePackage) where
  preferenceConsistencyClosed : I.preferenceConsistency
  exponentialDiscountingClosed : I.exponentialDiscounting

def IntertemporalChoiceClosed (I : IntertemporalChoicePackage) : Prop :=
  I.preferenceConsistency ∧ I.exponentialDiscounting

theorem intertemporal_choice_closed_from_evidence
    (I : IntertemporalChoicePackage) (E : IntertemporalChoiceEvidence I) :
    IntertemporalChoiceClosed I := by
  exact And.intro E.preferenceConsistencyClosed E.exponentialDiscountingClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse