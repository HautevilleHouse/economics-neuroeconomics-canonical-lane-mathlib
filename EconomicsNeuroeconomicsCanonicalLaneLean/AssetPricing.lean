import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  stateSpace : Type v
  stochasticDiscountFactor : Type w
  noArbitrage : Prop
  riskNeutralPricing : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  riskNeutralPricingClosed : A.riskNeutralPricing

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.riskNeutralPricing

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed E.riskNeutralPricingClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse