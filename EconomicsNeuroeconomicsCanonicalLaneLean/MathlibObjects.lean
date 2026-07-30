import EconomicsNeuroeconomicsCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib.AdmissibleClass

structure NeuroeconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroeconomicsAdmittedObject where
  space : NeuroeconomicsSpace
  marketStructure : Prop
  equilibriumExists : Prop
  socialWelfareFunction : Type
  welfareTopology : TopologicalSpace socialWelfareFunction
  welfareCoincidesWithEquilibrium : Prop
  conclusion : welfareCoincidesWithEquilibrium

structure NeuroeconomicsEndgameState where
  object : NeuroeconomicsAdmittedObject

def NeuroeconomicsWitnessClosed (O : NeuroeconomicsAdmittedObject) : Prop :=
  O.welfareCoincidesWithEquilibrium

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse