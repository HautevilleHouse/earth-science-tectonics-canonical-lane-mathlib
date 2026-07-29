import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SeismicTomographyPackage where
  travelTime : String
  velocityModel : String
  raypath : String
  inversionRegularized : Prop
  resolutionTest : Prop

structure SeismicTomographyEvidence (S : SeismicTomographyPackage) where
  inversionRegularizedClosed : S.inversionRegularized
  resolutionTestClosed : S.resolutionTest

def SeismicTomographyClosed (S : SeismicTomographyPackage) : Prop :=
  S.inversionRegularized ∧ S.resolutionTest

theorem seismic_tomography_closed_from_evidence (S : SeismicTomographyPackage) (E : SeismicTomographyEvidence S) :
    SeismicTomographyClosed S := by
  exact And.intro E.inversionRegularizedClosed E.resolutionTestClosed

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse