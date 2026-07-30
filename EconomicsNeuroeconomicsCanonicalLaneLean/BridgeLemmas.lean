import EconomicsNeuroeconomicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsNeuroeconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroeconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsNeuroeconomicsCanonicalLaneLean
end HautevilleHouse