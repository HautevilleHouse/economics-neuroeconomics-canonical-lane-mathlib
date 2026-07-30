import EconomicsNeuroeconomicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

def ConstrainedNeuroeconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroeconomics_endgame (A : AdmissibleClass) :
    ConstrainedNeuroeconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse