import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure CrustalDeformationPackage where
  strainRate : String
  stressField : String
  faultSlipRate : Prop
  geodeticData : Prop
  viscoelasticRelaxation : Prop

structure CrustalDeformationEvidence (C : CrustalDeformationPackage) where
  faultSlipRateClosed : C.faultSlipRate
  geodeticDataClosed : C.geodeticData
  viscoelasticRelaxationClosed : C.viscoelasticRelaxation

def CrustalDeformationClosed (C : CrustalDeformationPackage) : Prop :=
  C.faultSlipRate ∧ C.geodeticData ∧ C.viscoelasticRelaxation

theorem crustal_deformation_closed_from_evidence (C : CrustalDeformationPackage) (E : CrustalDeformationEvidence C) :
    CrustalDeformationClosed C := by
  exact And.intro E.faultSlipRateClosed (And.intro E.geodeticDataClosed E.viscoelasticRelaxationClosed)

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse