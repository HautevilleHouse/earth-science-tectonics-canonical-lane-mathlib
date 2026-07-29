import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure LithosphereDynamics where
  crustThickness : ℝ
  mantleConvection : Prop
  isostasyBalance : Prop
  heatFlow : ℝ

structure LithosphereEvidence (L : LithosphereDynamics) where
  crustThicknessPositive : L.crustThickness > 0
  mantleConvectionActive : L.mantleConvection
  isostasyBalanced : L.isostasyBalance
  heatFlowPositive : L.heatFlow > 0

def LithosphereDynamicsClosed (L : LithosphereDynamics) : Prop :=
  L.crustThickness > 0 ∧ L.mantleConvection ∧ L.isostasyBalance ∧ L.heatFlow > 0

theorem lithosphere_dynamics_closed_from_evidence (L : LithosphereDynamics) (E : LithosphereEvidence L) : LithosphereDynamicsClosed L := by
  exact And.intro E.crustThicknessPositive (And.intro E.mantleConvectionActive (And.intro E.isostasyBalanced E.heatFlowPositive))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse