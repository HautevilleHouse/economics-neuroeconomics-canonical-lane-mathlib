import EconomicsNeuroeconomicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

structure NeuroeconomicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroeconomicAdmittedObject where
  space : NeuroeconomicSpace
  decisionEnvironment : Prop
  neuroeconomicEquilibrium : Prop
  equilibriumModel : Type
  modelTopology : TopologicalSpace equilibriumModel
  modelConsistentWithData : Prop
  conclusion : modelConsistentWithData

structure NeuroeconomicEndgameState where
  object : NeuroeconomicAdmittedObject

def NeuroeconomicWitnessClosed (O : NeuroeconomicAdmittedObject) : Prop :=
  O.modelConsistentWithData

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse
