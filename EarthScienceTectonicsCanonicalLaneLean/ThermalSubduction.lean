import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure ThermalSubductionPackage where
  slabGeometry : String
  thermalStructure : String
  geothermalGradient : Prop
  phaseTransitions : Prop
  slabMantleCoupling : Prop

structure ThermalSubductionEvidence (T : ThermalSubductionPackage) where
  geothermalGradientClosed : T.geothermalGradient
  phaseTransitionsClosed : T.phaseTransitions
  slabMantleCouplingClosed : T.slabMantleCoupling

def ThermalSubductionClosed (T : ThermalSubductionPackage) : Prop :=
  T.geothermalGradient ∧ T.phaseTransitions ∧ T.slabMantleCoupling

thermal_subduction_closed_from_evidence (T : ThermalSubductionPackage) (E : ThermalSubductionEvidence T) :
    ThermalSubductionClosed T := by
  exact And.intro E.geothermalGradientClosed (And.intro E.phaseTransitionsClosed E.slabMantleCouplingClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse