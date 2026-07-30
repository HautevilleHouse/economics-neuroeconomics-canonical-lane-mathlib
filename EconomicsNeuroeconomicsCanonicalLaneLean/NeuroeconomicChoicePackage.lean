import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicChoicePackage where
  decisionMaker : Type u
  choiceSet : Type v
  preferences : choiceSet → choiceSet → Prop
  completeness : ∀ x y : choiceSet, preferences x y ∨ preferences y x
  transitivity : ∀ x y z : choiceSet, preferences x y → preferences y z → preferences x z

structure NeuroeconomicChoiceEvidence (C : NeuroeconomicChoicePackage) where
  completeness_closed : C.completeness
  transitivity_closed : C.transitivity

def NeuroeconomicChoiceClosed (C : NeuroeconomicChoicePackage) : Prop :=
  C.completeness ∧ C.transitivity

theorem neuroeconomic_choice_closed_from_evidence (C : NeuroeconomicChoicePackage)
    (E : NeuroeconomicChoiceEvidence C) : NeuroeconomicChoiceClosed C :=
  And.intro E.completeness_closed E.transitivity_closed

end HautevilleHouse
end EconomicsNeuroeconomicsCanonicalLaneLean
