import EconomicsNeuroeconomicsCanonicalLaneLean.UtilityTheory

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicsSubstratePackage where
  neuralBasis : Type u
  rewardProcessing : Prop
  valuationCircuit : Prop
  decisionIntegration : Prop
  riskAssessment : Prop

def NeuroeconomicsSubstrateClosed (N : NeuroeconomicsSubstratePackage) : Prop :=
  N.rewardProcessing ∧ N.valuationCircuit ∧ N.decisionIntegration ∧ N.riskAssessment

theorem neuroeconomics_substrate_closed (N : NeuroeconomicsSubstratePackage) : NeuroeconomicsSubstrateClosed N :=
  And.intro N.rewardProcessing (And.intro N.valuationCircuit (And.intro N.decisionIntegration N.riskAssessment))

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse