import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure ExpectedUtilityPackage where
  lotterySpace : Type u
  preferences : lotterySpace → lotterySpace → Prop
  vNMIndependence : Prop
  continuity : Prop
  expectedUtilityFunction : lotterySpace → ℝ
  representationTheorem : Prop

structure ExpectedUtilityEvidence (U : ExpectedUtilityPackage) where
  vNMIndependenceClosed : U.vNMIndependence
  continuityClosed : U.continuity
  representationTheoremClosed : U.representationTheorem

def ExpectedUtilityClosed (U : ExpectedUtilityPackage) : Prop :=
  U.vNMIndependence ∧ U.continuity ∧ U.representationTheorem

theorem expected_utility_closed_from_evidence (U : ExpectedUtilityPackage)
    (E : ExpectedUtilityEvidence U) : ExpectedUtilityClosed U := by
  exact And.intro E.vNMIndependenceClosed (And.intro E.continuityClosed E.representationTheoremClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse