import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure PlateKinematicsPackage where
  relativeVelocity : String
  rotationPole : String
  eulerVector : String
  angularVelocity : Prop
  velocityGradient : Prop

structure PlateKinematicsEvidence (P : PlateKinematicsPackage) where
  angularVelocityClosed : P.angularVelocity
  velocityGradientClosed : P.velocityGradient

def PlateKinematicsClosed (P : PlateKinematicsPackage) : Prop :=
  P.angularVelocity ∧ P.velocityGradient

theorem plate_kinematics_closed_from_evidence (P : PlateKinematicsPackage) (E : PlateKinematicsEvidence P) :
    PlateKinematicsClosed P := by
  exact And.intro E.angularVelocityClosed E.velocityGradientClosed

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse