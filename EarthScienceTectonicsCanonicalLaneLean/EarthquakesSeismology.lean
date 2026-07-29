import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure EarthquakesSeismologyPackage where
  faultMechanics : Prop
  wavePropagation : Prop
  hypocenterLocation : Prop
  magnitudeScales : Prop

structure EarthquakesSeismologyEvidence (E : EarthquakesSeismologyPackage) where
  faultMechanicsClosed : E.faultMechanics
  wavePropagationClosed : E.wavePropagation
  hypocenterLocationClosed : E.hypocenterLocation
  magnitudeScalesClosed : E.magnitudeScales

def EarthquakesSeismologyClosed (E : EarthquakesSeismologyPackage) : Prop :=
  E.faultMechanics ∧ E.wavePropagation ∧ E.hypocenterLocation ∧ E.magnitudeScales

theorem earthquakes_seismology_closed_from_evidence (E : EarthquakesSeismologyPackage) (Ev : EarthquakesSeismologyEvidence E) :
    EarthquakesSeismologyClosed E := by
  exact And.intro Ev.faultMechanicsClosed (And.intro Ev.wavePropagationClosed (And.intro Ev.hypocenterLocationClosed Ev.magnitudeScalesClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse