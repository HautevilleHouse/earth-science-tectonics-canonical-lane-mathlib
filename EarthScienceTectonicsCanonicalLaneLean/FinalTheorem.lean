import canonicalLaneMathlib.AdmissibleClass
import EarthScienceTectonicsCanonicalLaneLean.BridgeLemmas
import EarthScienceTectonicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

def ConstrainedTectonicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem tectonic_endgame (A : AdmissibleClass) :
    ConstrainedTectonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse
