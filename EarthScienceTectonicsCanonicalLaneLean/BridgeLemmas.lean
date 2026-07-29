import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TectonicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse
