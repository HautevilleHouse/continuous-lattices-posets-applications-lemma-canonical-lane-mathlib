import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.WaybelowRelation

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure DomainTheory (P : ContinuousPoset) (W : WaybelowRelation P) where
  basisExists : Prop
  approximableMaps : Prop
  fixedPointTheorem : Prop
  basisExistsClosed : basisExists
  approximableMapsClosed : approximableMaps
  fixedPointTheoremClosed : fixedPointTheorem

def DomainTheoryClosure (P : ContinuousPoset) (W : WaybelowRelation P) (D : DomainTheory P W) : Prop :=
  D.basisExists ∧ D.approximableMaps ∧ D.fixedPointTheorem

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse