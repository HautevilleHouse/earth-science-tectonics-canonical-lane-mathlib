import canonicalLaneMathlib.AdmissibleClass
import EarthScienceTectonicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceTectonicsCanonicalLaneLean

structure PlateBoundaryPackage where
  convergentBoundaryModel : Prop
  divergentBoundaryModel : Prop
  transformBoundaryModel : Prop
  tripleJunctionModel : Prop

structure PlateBoundaryEvidence (P : PlateBoundaryPackage) where
  convergentBoundaryClosed : P.convergentBoundaryModel
  divergentBoundaryClosed : P.divergentBoundaryModel
  transformBoundaryClosed : P.transformBoundaryModel
  tripleJunctionClosed : P.tripleJunctionModel

def PlateBoundaryClosed (P : PlateBoundaryPackage) : Prop :=
  P.convergentBoundaryModel ∧ P.divergentBoundaryModel ∧
  P.transformBoundaryModel ∧ P.tripleJunctionModel

theorem plate_boundary_closed_from_evidence (P : PlateBoundaryPackage)
    (E : PlateBoundaryEvidence P) : PlateBoundaryClosed P := by
  exact And.intro E.convergentBoundaryClosed
    (And.intro E.divergentBoundaryClosed
      (And.intro E.transformBoundaryClosed E.tripleJunctionClosed))

end EarthScienceTectonicsCanonicalLaneLean
end HautevilleHouse
