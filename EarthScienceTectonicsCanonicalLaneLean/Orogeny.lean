import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure Orogeny where
  collisionType : String
  mountainBuildingDuration : ℝ
  metamorphismPresent : Prop
  crustalThickening : Prop

structure OrogenyEvidence (O : Orogeny) where
  collisionTypeClassified : O.collisionType = "continent-continent" ∨ O.collisionType = "arc-continent"
  durationPositive : O.mountainBuildingDuration > 0
  metamorphicFaciesObserved : O.metamorphismPresent
  crustThickeningDetected : O.crustalThickening

def OrogenyClosed (O : Orogeny) : Prop :=
  (O.collisionType = "continent-continent" ∨ O.collisionType = "arc-continent") ∧ O.mountainBuildingDuration > 0 ∧ O.metamorphismPresent ∧ O.crustalThickening

theorem orogeny_closed_from_evidence (O : Orogeny) (E : OrogenyEvidence O) : OrogenyClosed O := by
  exact And.intro E.collisionTypeClassified (And.intro E.durationPositive (And.intro E.metamorphicFaciesObserved E.crustThickeningDetected))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse