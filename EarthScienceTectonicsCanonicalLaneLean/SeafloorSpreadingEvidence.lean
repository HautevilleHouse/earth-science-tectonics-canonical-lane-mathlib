import canonicalLaneMathlib.AdmissibleClass
import EarthScienceTectonicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SeafloorSpreadingPackage where
  magneticAnomalyPattern : Prop
  ageProgression : Prop
  crustalThickness : Prop
  spreadingRate : Prop

structure SeafloorSpreadingEvidence (S : SeafloorSpreadingPackage) where
  magneticAnomalyPatternClosed : S.magneticAnomalyPattern
  ageProgressionClosed : S.ageProgression
  crustalThicknessClosed : S.crustalThickness
  spreadingRateClosed : S.spreadingRate

def SeafloorSpreadingClosed (S : SeafloorSpreadingPackage) : Prop :=
  S.magneticAnomalyPattern ∧ S.ageProgression ∧
  S.crustalThickness ∧ S.spreadingRate

theorem seafloor_spreading_closed_from_evidence (S : SeafloorSpreadingPackage)
    (E : SeafloorSpreadingEvidence S) : SeafloorSpreadingClosed S := by
  exact And.intro E.magneticAnomalyPatternClosed
    (And.intro E.ageProgressionClosed
      (And.intro E.crustalThicknessClosed E.spreadingRateClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse
