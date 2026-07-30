import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuralUtilityPackage where
  neuralState : Type u
  rewardSignal : neuralState → ℝ
  utilityMapping : ℝ → ℝ
  stochasticEncoding : Bool
  representability : Prop
  monotonicity : Prop

structure NeuralUtilityEvidence (U : NeuralUtilityPackage) where
  representabilityClosed : U.representability
  monotonicityClosed : U.monotonicity

def NeuralUtilityClosed (U : NeuralUtilityPackage) : Prop :=
  U.representability ∧ U.monotonicity

theorem neural_utility_closed_from_evidence
    (U : NeuralUtilityPackage) (E : NeuralUtilityEvidence U) :
    NeuralUtilityClosed U := by
  exact And.intro E.representabilityClosed E.monotonicityClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse