import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuralAssetPricingPackage where
  assetTypes : Type u
  stateSpace : Type v
  payoffMatrix : stateSpace → assetTypes → ℝ
  pricingKernel : stateSpace → ℝ
  assetPrice : assetTypes → ℝ
  fundamentalEquation : ∀ a : assetTypes, assetPrice a = ∑ s : stateSpace, pricingKernel s * payoffMatrix s a

structure NeuralAssetPricingEvidence (P : NeuralAssetPricingPackage) where
  fundamentalEquation_closed : P.fundamentalEquation
  pricingKernelPositive : ∀ s : P.stateSpace, P.pricingKernel s > 0

def NeuralAssetPricingClosed (P : NeuralAssetPricingPackage) : Prop :=
  P.fundamentalEquation ∧ ∀ s : P.stateSpace, P.pricingKernel s > 0

theorem neural_asset_pricing_closed_from_evidence (P : NeuralAssetPricingPackage)
    (E : NeuralAssetPricingEvidence P) : NeuralAssetPricingClosed P :=
  And.intro E.fundamentalEquation_closed E.pricingKernelPositive

end HautevilleHouse
end EconomicsNeuroeconomicsCanonicalLaneLean
