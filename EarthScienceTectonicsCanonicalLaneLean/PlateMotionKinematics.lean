import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure PlateMotionKinematics where
  relativeVelocity : ℝ × ℝ × ℝ
  rotationPole : ℝ × ℝ
  angularVelocity : ℝ
  eulerPoleStability : Prop

structure KinematicsEvidence (K : PlateMotionKinematics) where
  velocityNonZero : K.relativeVelocity ≠ (0, 0, 0)
  rotationPoleValid : -90 ≤ K.rotationPole.1 ∧ K.rotationPole.1 ≤ 90 ∧ -180 ≤ K.rotationPole.2 ∧ K.rotationPole.2 ≤ 180
  angularVelocityPositive : K.angularVelocity > 0
  poleStableOverTime : K.eulerPoleStability

def PlateMotionKinematicsClosed (K : PlateMotionKinematics) : Prop :=
  K.relativeVelocity ≠ (0, 0, 0) ∧ (-90 ≤ K.rotationPole.1 ∧ K.rotationPole.1 ≤ 90 ∧ -180 ≤ K.rotationPole.2 ∧ K.rotationPole.2 ≤ 180) ∧ K.angularVelocity > 0 ∧ K.eulerPoleStability

theorem plate_motion_kinematics_closed_from_evidence (K : PlateMotionKinematics) (E : KinematicsEvidence K) : PlateMotionKinematicsClosed K := by
  exact And.intro E.velocityNonZero (And.intro E.rotationPoleValid (And.intro E.angularVelocityPositive E.poleStableOverTime))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse