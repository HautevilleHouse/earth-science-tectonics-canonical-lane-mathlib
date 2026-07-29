import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure OrogenyMountainBuildingPackage where
  collisionTectonics : Prop
  foldThrustBelts : Prop
  crustalThickening : Prop
  isostaticRebound : Prop

structure OrogenyMountainBuildingEvidence (O : OrogenyMountainBuildingPackage) where
  collisionTectonicsClosed : O.collisionTectonics
  foldThrustBeltsClosed : O.foldThrustBelts
  crustalThickeningClosed : O.crustalThickening
  isostaticReboundClosed : O.isostaticRebound

def OrogenyMountainBuildingClosed (O : OrogenyMountainBuildingPackage) : Prop :=
  O.collisionTectonics ∧ O.foldThrustBelts ∧ O.crustalThickening ∧ O.isostaticRebound

theorem orogeny_mountain_building_closed_from_evidence (O : OrogenyMountainBuildingPackage) (E : OrogenyMountainBuildingEvidence O) :
    OrogenyMountainBuildingClosed O := by
  exact And.intro E.collisionTectonicsClosed (And.intro E.foldThrustBeltsClosed (And.intro E.crustalThickeningClosed E.isostaticReboundClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse