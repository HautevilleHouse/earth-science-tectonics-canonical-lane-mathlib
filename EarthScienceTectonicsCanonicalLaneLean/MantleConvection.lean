import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure MantleConvectionPackage where
  mantleRheology : String
  buoyancyForce : String
  rayleighNumber : Prop
  boundaryLayer : Prop
  plumeFormation : Prop

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  rayleighNumberClosed : M.rayleighNumber
  boundaryLayerClosed : M.boundaryLayer
  plumeFormationClosed : M.plumeFormation

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.rayleighNumber ∧ M.boundaryLayer ∧ M.plumeFormation

theorem mantle_convection_closed_from_evidence (M : MantleConvectionPackage) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.rayleighNumberClosed (And.intro E.boundaryLayerClosed E.plumeFormationClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse