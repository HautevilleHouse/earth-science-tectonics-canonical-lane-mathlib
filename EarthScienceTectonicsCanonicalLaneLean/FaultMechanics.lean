import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure FaultMechanicsPackage where
  stressTensor : Prop
  frictionLaw : Prop
  slipRate : Prop
  earthquakeCycle : Prop
  rupturePropagation : Prop

structure FaultMechanicsEvidence (F : FaultMechanicsPackage) where
  stressTensorClosed : F.stressTensor
  frictionLawClosed : F.frictionLaw
  slipRateClosed : F.slipRate
  earthquakeCycleClosed : F.earthquakeCycle
  rupturePropagationClosed : F.rupturePropagation

def FaultMechanicsClosed (F : FaultMechanicsPackage) : Prop :=
  F.stressTensor ∧ F.frictionLaw ∧ F.slipRate ∧ F.earthquakeCycle ∧ F.rupturePropagation

theorem fault_mechanics_closed_from_evidence
    (F : FaultMechanicsPackage) (E : FaultMechanicsEvidence F) :
    FaultMechanicsClosed F := by
  exact And.intro E.stressTensorClosed
    (And.intro E.frictionLawClosed
      (And.intro E.slipRateClosed
        (And.intro E.earthquakeCycleClosed E.rupturePropagationClosed)))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse