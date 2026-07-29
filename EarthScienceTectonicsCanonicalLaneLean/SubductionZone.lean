import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SubductionZone where
  slabDipAngle : ℝ
  slabDepth : ℝ
  volcanicArcPresent : Prop
  earthquakeFoci : Prop

structure SubductionEvidence (S : SubductionZone) where
  slabDipAngleBetween0And90 : 0 < S.slabDipAngle ∧ S.slabDipAngle < 90
  slabDepthPositive : S.slabDepth > 0
  volcanicArcDetected : S.volcanicArcPresent
  earthquakeFociAlongSlab : S.earthquakeFoci

def SubductionZoneClosed (S : SubductionZone) : Prop :=
  (0 < S.slabDipAngle ∧ S.slabDipAngle < 90) ∧ S.slabDepth > 0 ∧ S.volcanicArcPresent ∧ S.earthquakeFoci

theorem subduction_zone_closed_from_evidence (S : SubductionZone) (E : SubductionEvidence S) : SubductionZoneClosed S := by
  exact And.intro E.slabDipAngleBetween0And90 (And.intro E.slabDepthPositive (And.intro E.volcanicArcDetected E.earthquakeFociAlongSlab))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse