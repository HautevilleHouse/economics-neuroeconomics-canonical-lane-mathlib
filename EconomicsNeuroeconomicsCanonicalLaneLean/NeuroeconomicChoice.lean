import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicChoiceModel where
  neuralState : Type u
  choiceSpace : Type v
  neuralMapping : neuralState → choiceSpace → ℝ
  rewardPrediction : Prop
  temporalDifference : Prop
  dopamineSignal : Prop

structure NeuroeconomicChoiceEvidence (N : NeuroeconomicChoiceModel) where
  rewardPredictionClosed : N.rewardPrediction
  temporalDifferenceClosed : N.temporalDifference
  dopamineSignalClosed : N.dopamineSignal

def NeuroeconomicChoiceClosed (N : NeuroeconomicChoiceModel) : Prop :=
  N.rewardPrediction ∧ N.temporalDifference ∧ N.dopamineSignal

theorem neuroeconomic_choice_closed_from_evidence
    (N : NeuroeconomicChoiceModel) (E : NeuroeconomicChoiceEvidence N) :
    NeuroeconomicChoiceClosed N := by
  exact And.intro E.rewardPredictionClosed
    (And.intro E.temporalDifferenceClosed E.dopamineSignalClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse