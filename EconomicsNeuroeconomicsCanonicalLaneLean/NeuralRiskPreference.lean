import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuralRiskPackage where
  riskContext : Type u
  gamble : riskContext → ℝ → ℙ ℝ
  neuralResponse : ℝ → ℝ
  ambiguityAttitude : Prop
  riskAversion : Prop
  lossAversion : Bool

structure NeuralRiskEvidence (R : NeuralRiskPackage) where
  ambiguityAttitudeClosed : R.ambiguityAttitude
  riskAversionClosed : R.riskAversion

def NeuralRiskClosed (R : NeuralRiskPackage) : Prop :=
  R.ambiguityAttitude ∧ R.riskAversion

theorem neural_risk_closed_from_evidence
    (R : NeuralRiskPackage) (E : NeuralRiskEvidence R) :
    NeuralRiskClosed R := by
  exact And.intro E.ambiguityAttitudeClosed E.riskAversionClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse