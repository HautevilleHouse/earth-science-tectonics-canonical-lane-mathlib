import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SeafloorSpreadingPackage where
  midOceanRidges : Prop
  magneticStripes : Prop
  crustalAge : Prop
  riftValley : Prop

structure SeafloorSpreadingEvidence (S : SeafloorSpreadingPackage) where
  midOceanRidgesClosed : S.midOceanRidges
  magneticStripesClosed : S.magneticStripes
  crustalAgeClosed : S.crustalAge
  riftValleyClosed : S.riftValley

def SeafloorSpreadingClosed (S : SeafloorSpreadingPackage) : Prop :=
  S.midOceanRidges ∧ S.magneticStripes ∧ S.crustalAge ∧ S.riftValley

theorem seafloor_spreading_closed_from_evidence (S : SeafloorSpreadingPackage) (E : SeafloorSpreadingEvidence S) :
    SeafloorSpreadingClosed S := by
  exact And.intro E.midOceanRidgesClosed (And.intro E.magneticStripesClosed (And.intro E.crustalAgeClosed E.riftValleyClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse