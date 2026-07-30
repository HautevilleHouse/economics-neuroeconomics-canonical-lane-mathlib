import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure RationalChoicePackage where
  preferenceRelation : Type u
  completeness : Prop
  transitivity : Prop
  utilityFunction : Type v
  representation : Prop

structure RationalChoiceEvidence (R : RationalChoicePackage) where
  completenessClosed : R.completeness
  transitivityClosed : R.transitivity
  representationClosed : R.representation

def RationalChoiceClosed (R : RationalChoicePackage) : Prop :=
  R.completeness ∧ R.transitivity ∧ R.representation

theorem rational_choice_closed_from_evidence (R : RationalChoicePackage)
    (E : RationalChoiceEvidence R) : RationalChoiceClosed R := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed E.representationClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse