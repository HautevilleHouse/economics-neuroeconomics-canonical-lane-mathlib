import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  consumers : Type v
  producers : Type w
  priceSystem : Type x
  preferences : Prop
  endowments : Prop
  productionSets : Prop
  excessDemandFunction : Prop
  marketClearing : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  preferencesClosed : A.preferences
  endowmentsClosed : A.endowments
  productionSetsClosed : A.productionSets
  excessDemandFunctionClosed : A.excessDemandFunction
  marketClearingClosed : A.marketClearing

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.preferences ∧ A.endowments ∧ A.productionSets ∧ A.excessDemandFunction ∧ A.marketClearing

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.preferencesClosed
    (And.intro E.endowmentsClosed
      (And.intro E.productionSetsClosed
        (And.intro E.excessDemandFunctionClosed E.marketClearingClosed)))

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse
