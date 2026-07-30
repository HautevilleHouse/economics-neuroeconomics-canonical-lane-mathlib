import EconomicsNeuroeconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : NeuroeconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroeconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse