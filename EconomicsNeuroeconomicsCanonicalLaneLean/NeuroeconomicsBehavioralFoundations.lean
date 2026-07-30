import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicChoicePackage where
  decisionContext : Type u
  valueFunction : decisionContext → ℝ
  choiceRule : (decisionContext → ℝ) → decisionContext → ℙ decisionContext
  stochasticComponent : Bool
  preferenceConsistency : Prop
  contextInvariance : Prop

structure NeuroeconomicChoiceEvidence (N : NeuroeconomicChoicePackage) where
  preferenceConsistencyClosed : N.preferenceConsistency
  contextInvarianceClosed : N.contextInvariance

def NeuroeconomicChoiceClosed (N : NeuroeconomicChoicePackage) : Prop :=
  N.preferenceConsistency ∧ N.contextInvariance

theorem neuroeconomic_choice_closed_from_evidence
    (N : NeuroeconomicChoicePackage) (E : NeuroeconomicChoiceEvidence N) :
    NeuroeconomicChoiceClosed N := by
  exact And.intro E.preferenceConsistencyClosed E.contextInvarianceClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse