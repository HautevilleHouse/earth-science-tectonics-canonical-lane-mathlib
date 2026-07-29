import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure ElasticDislocationPackage where
  okadaModel : String
  greensFunction : String
  slipDistribution : Prop
  surfaceDeformation : Prop
  halfSpaceAssumption : Prop

structure ElasticDislocationEvidence (E : ElasticDislocationPackage) where
  slipDistributionClosed : E.slipDistribution
  surfaceDeformationClosed : E.surfaceDeformation
  halfSpaceAssumptionClosed : E.halfSpaceAssumption

def ElasticDislocationClosed (E : ElasticDislocationPackage) : Prop :=
  E.slipDistribution ∧ E.surfaceDeformation ∧ E.halfSpaceAssumption

theorem elastic_dislocation_closed_from_evidence (E : ElasticDislocationPackage) (Ev : ElasticDislocationEvidence E) :
    ElasticDislocationClosed E := by
  exact And.intro Ev.slipDistributionClosed (And.intro Ev.surfaceDeformationClosed Ev.halfSpaceAssumptionClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse