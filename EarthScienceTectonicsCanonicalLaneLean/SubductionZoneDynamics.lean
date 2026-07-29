import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceTectonicsCanonicalLaneLean.TectonicPlateModels

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SubductionZoneModel where
  trenchGeometry : String
  slabDipAngle : ℝ
  slabDepth : ℝ
  slabMeltFraction : ℝ

structure MantleFlowField where
  viscosityProfile : ℝ → ℝ
  densityProfile : ℝ → ℝ
  temperatureProfile : ℝ → ℝ

structure SubductionZonePackage (T : TectonicPlatePackage) where
  model : SubductionZoneModel
  flow : MantleFlowField
  slabPullDrivesSubduction : Prop
  dehydrationEmbrittlement : Prop
  meltGeneration : Prop

structure SubductionZoneEvidence {T : TectonicPlatePackage} (S : SubductionZonePackage T) where
  slabPullDrivesSubductionClosed : S.slabPullDrivesSubduction
  dehydrationEmbrittlementClosed : S.dehydrationEmbrittlement
  meltGenerationClosed : S.meltGeneration

def SubductionZonePackageClosed {T : TectonicPlatePackage} (S : SubductionZonePackage T) : Prop :=
  S.slabPullDrivesSubduction ∧ S.dehydrationEmbrittlement ∧ S.meltGeneration

theorem subduction_zone_package_closed_from_evidence {T : TectonicPlatePackage} (S : SubductionZonePackage T) (E : SubductionZoneEvidence S) : SubductionZonePackageClosed S := by
  exact And.intro E.slabPullDrivesSubductionClosed (And.intro E.dehydrationEmbrittlementClosed E.meltGenerationClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse
