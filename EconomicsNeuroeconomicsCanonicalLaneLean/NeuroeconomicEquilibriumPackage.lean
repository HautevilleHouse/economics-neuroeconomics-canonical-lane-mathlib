import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicEquilibriumPackage {C : NeuroeconomicChoicePackage}
    {U : NeuralUtilityRepresentationPackage C} where
  marketType : Type u
  priceVector : marketType → ℝ
  allocation : C.decisionMaker → marketType → ℝ
  marketClearing : ∀ good : marketType, ∑ dm : C.decisionMaker, allocation dm good = 0
  utilityMaximization : ∀ dm : C.decisionMaker, ∀ bundle : marketType → ℝ,
    U.utilityFunction (allocation dm) ≥ U.utilityFunction bundle

structure NeuroeconomicEquilibriumEvidence {C : NeuroeconomicChoicePackage}
    {U : NeuralUtilityRepresentationPackage C}
    (E : NeuroeconomicEquilibriumPackage C U) where
  marketClearing_closed : E.marketClearing
  utilityMaximization_closed : E.utilityMaximization

def NeuroeconomicEquilibriumClosed {C : NeuroeconomicChoicePackage}
    {U : NeuralUtilityRepresentationPackage C}
    (E : NeuroeconomicEquilibriumPackage C U) : Prop :=
  E.marketClearing ∧ E.utilityMaximization

theorem neuroeconomic_equilibrium_closed_from_evidence {C : NeuroeconomicChoicePackage}
    {U : NeuralUtilityRepresentationPackage C}
    (E : NeuroeconomicEquilibriumPackage C U) (Ev : NeuroeconomicEquilibriumEvidence E) :
    NeuroeconomicEquilibriumClosed E :=
  And.intro Ev.marketClearing_closed Ev.utilityMaximization_closed

end HautevilleHouse
end EconomicsNeuroeconomicsCanonicalLaneLean
