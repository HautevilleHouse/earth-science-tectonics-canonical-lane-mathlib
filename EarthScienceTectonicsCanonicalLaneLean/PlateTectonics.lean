import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure PlateTectonicsPackage where
  lithosphereType : Type
  plateBoundaries : Prop
  drivingForces : Prop
  mantleConvection : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  plateBoundariesClosed : P.plateBoundaries
  drivingForcesClosed : P.drivingForces
  mantleConvectionClosed : P.mantleConvection

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.plateBoundaries ∧ P.drivingForces ∧ P.mantleConvection

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.plateBoundariesClosed (And.intro E.drivingForcesClosed E.mantleConvectionClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse