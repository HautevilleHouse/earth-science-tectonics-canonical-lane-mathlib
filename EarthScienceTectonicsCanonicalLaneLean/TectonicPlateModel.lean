import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure TectonicPlateModel where
  plateId : String
  velocityField : Type
  boundaryType : String
  rigidity : Prop

structure PlateBoundaryEvidence (M : TectonicPlateModel) where
  velocityFieldDefined : True
  boundaryTypeClassified : M.boundaryType = "divergent" ∨ M.boundaryType = "convergent" ∨ M.boundaryType = "transform"
  rigidBodyAssumption : M.rigidity

def TectonicPlateModelClosed (M : TectonicPlateModel) : Prop :=
  M.rigidity ∧ (M.boundaryType = "divergent" ∨ M.boundaryType = "convergent" ∨ M.boundaryType = "transform")

theorem tectonic_plate_model_closed_from_evidence (M : TectonicPlateModel) (E : PlateBoundaryEvidence M) : TectonicPlateModelClosed M := by
  exact And.intro E.rigidBodyAssumption E.boundaryTypeClassified

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse