import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeurometricUtilityPackage where
  choiceData : Type u
  neuralSignals : Type v
  utilityRepresentation : Prop
  consistencyWithRevealedPreference : Prop
  neuroeconomicBridging : Prop

structure NeurometricUtilityEvidence (N : NeurometricUtilityPackage) where
  utilityRepresentationClosed : N.utilityRepresentation
  consistencyWithRevealedPreferenceClosed : N.consistencyWithRevealedPreference
  neuroeconomicBridgingClosed : N.neuroeconomicBridging

def NeurometricUtilityClosed (N : NeurometricUtilityPackage) : Prop :=
  N.utilityRepresentation ∧ N.consistencyWithRevealedPreference ∧ N.neuroeconomicBridging

theorem neurometric_utility_closed_from_evidence
    (N : NeurometricUtilityPackage) (E : NeurometricUtilityEvidence N) :
    NeurometricUtilityClosed N := by
  exact And.intro E.utilityRepresentationClosed
    (And.intro E.consistencyWithRevealedPreferenceClosed E.neuroeconomicBridgingClosed)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse
