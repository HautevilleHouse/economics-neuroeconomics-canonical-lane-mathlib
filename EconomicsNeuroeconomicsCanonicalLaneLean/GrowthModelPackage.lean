import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure GrowthModel where
  productionFunction : ℝ → ℝ
  capitalAccumulation : ℝ → ℝ → Prop
  consumptionSmoothing : Prop
  steadyStateExistence : Prop
  optimalGrowthPath : Prop

structure GrowthModelEvidence (G : GrowthModel) where
  consumptionSmoothingClosed : G.consumptionSmoothing
  steadyStateExistenceClosed : G.steadyStateExistence
  optimalGrowthPathClosed : G.optimalGrowthPath

def GrowthModelClosed (G : GrowthModel) : Prop :=
  G.consumptionSmoothing ∧ G.steadyStateExistence ∧ G.optimalGrowthPath

theorem growth_model_closed_from_evidence
    (G : GrowthModel) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.consumptionSmoothingClosed
    (And.intro E.steadyStateExistenceClosed E.optimalGrowthPathClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse