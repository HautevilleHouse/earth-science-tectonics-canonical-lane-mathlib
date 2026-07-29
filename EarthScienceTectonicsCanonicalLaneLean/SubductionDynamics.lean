import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure SubductionDynamicsPackage where
  slabPullForce : Prop
  trenchRollback : Prop
  volcanicArcMagmatism : Prop
  backArcSpreading : Prop
  earthquakeDistribution : Prop

structure SubductionDynamicsEvidence (S : SubductionDynamicsPackage) where
  slabPullForceClosed : S.slabPullForce
  trenchRollbackClosed : S.trenchRollback
  volcanicArcMagmatismClosed : S.volcanicArcMagmatism
  backArcSpreadingClosed : S.backArcSpreading
  earthquakeDistributionClosed : S.earthquakeDistribution

def SubductionDynamicsClosed (S : SubductionDynamicsPackage) : Prop :=
  S.slabPullForce ∧ S.trenchRollback ∧ S.volcanicArcMagmatism ∧ S.backArcSpreading ∧ S.earthquakeDistribution

theorem subduction_dynamics_closed_from_evidence
    (S : SubductionDynamicsPackage) (E : SubductionDynamicsEvidence S) :
    SubductionDynamicsClosed S := by
  exact And.intro E.slabPullForceClosed
    (And.intro E.trenchRollbackClosed
      (And.intro E.volcanicArcMagmatismClosed
        (And.intro E.backArcSpreadingClosed E.earthquakeDistributionClosed)))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse