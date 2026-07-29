import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure LithosphereFlexurePackage where
  elasticThickness : Prop
  flexuralRigidity : Prop
  bendingMoment : Prop
  deflectionProfile : Prop
  stressDistribution : Prop

structure LithosphereFlexureEvidence (L : LithosphereFlexurePackage) where
  elasticThicknessClosed : L.elasticThickness
  flexuralRigidityClosed : L.flexuralRigidity
  bendingMomentClosed : L.bendingMoment
  deflectionProfileClosed : L.deflectionProfile
  stressDistributionClosed : L.stressDistribution

def LithosphereFlexureClosed (L : LithosphereFlexurePackage) : Prop :=
  L.elasticThickness ∧ L.flexuralRigidity ∧ L.bendingMoment ∧ L.deflectionProfile ∧ L.stressDistribution

theorem lithosphere_flexure_closed_from_evidence
    (L : LithosphereFlexurePackage) (E : LithosphereFlexureEvidence L) :
    LithosphereFlexureClosed L := by
  exact And.intro E.elasticThicknessClosed
    (And.intro E.flexuralRigidityClosed
      (And.intro E.bendingMomentClosed
        (And.intro E.deflectionProfileClosed E.stressDistributionClosed)))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse