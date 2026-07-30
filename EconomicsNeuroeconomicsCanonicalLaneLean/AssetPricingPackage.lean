import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure AssetPricingModel where
  stateSpace : Type u
  stochasticDiscountFactor : stateSpace → ℝ
  assetPayoffs : stateSpace → ℝ → ℝ
  noArbitrage : Prop
  riskNeutralValuation : Prop
  representativeAgent : Prop

structure AssetPricingEvidence (A : AssetPricingModel) where
  noArbitrageClosed : A.noArbitrage
  riskNeutralValuationClosed : A.riskNeutralValuation
  representativeAgentClosed : A.representativeAgent

def AssetPricingClosed (A : AssetPricingModel) : Prop :=
  A.noArbitrage ∧ A.riskNeutralValuation ∧ A.representativeAgent

theorem asset_pricing_closed_from_evidence
    (A : AssetPricingModel) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed
    (And.intro E.riskNeutralValuationClosed E.representativeAgentClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse