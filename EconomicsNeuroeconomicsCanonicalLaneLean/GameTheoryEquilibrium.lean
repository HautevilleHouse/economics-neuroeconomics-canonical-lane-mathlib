import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure GameTheoryEquilibriumPackage where
  players : Type u
  strategies : Type v
  payoffs : Type w
  nashEquilibrium : Prop
  subgamePerfectEquilibrium : Prop

structure GameTheoryEquilibriumEvidence (G : GameTheoryEquilibriumPackage) where
  nashEquilibriumClosed : G.nashEquilibrium
  subgamePerfectEquilibriumClosed : G.subgamePerfectEquilibrium

def GameTheoryEquilibriumClosed (G : GameTheoryEquilibriumPackage) : Prop :=
  G.nashEquilibrium ∧ G.subgamePerfectEquilibrium

theorem game_theory_equilibrium_closed_from_evidence (G : GameTheoryEquilibriumPackage)
    (E : GameTheoryEquilibriumEvidence G) : GameTheoryEquilibriumClosed G := by
  exact And.intro E.nashEquilibriumClosed E.subgamePerfectEquilibriumClosed

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse