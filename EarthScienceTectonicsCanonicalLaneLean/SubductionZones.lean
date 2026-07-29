import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SubductionZonesPackage where
  slabPull : Prop
  trenchMigration : Prop
  arcVolcanism : Prop
  backArcBasin : Prop

structure SubductionZonesEvidence (S : SubductionZonesPackage) where
  slabPullClosed : S.slabPull
  trenchMigrationClosed : S.trenchMigration
  arcVolcanismClosed : S.arcVolcanism
  backArcBasinClosed : S.backArcBasin

def SubductionZonesClosed (S : SubductionZonesPackage) : Prop :=
  S.slabPull ∧ S.trenchMigration ∧ S.arcVolcanism ∧ S.backArcBasin

theorem subduction_zones_closed_from_evidence (S : SubductionZonesPackage) (E : SubductionZonesEvidence S) :
    SubductionZonesClosed S := by
  exact And.intro E.slabPullClosed (And.intro E.trenchMigrationClosed (And.intro E.arcVolcanismClosed E.backArcBasinClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse