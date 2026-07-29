import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousLattice

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ApplicationDomain (P : ContinuousPoset) (W : WayBelowRelation P) (L : ContinuousLattice P W) where
  problemDomain : Type u
  domainClosed : problemDomain

def applicationDomainClosed (P : ContinuousPoset) (W : WayBelowRelation P) (L : ContinuousLattice P W) (A : ApplicationDomain P W L) : Prop :=
  A.domainClosed

theorem application_domain_closed (P : ContinuousPoset) (W : WayBelowRelation P) (L : ContinuousLattice P W) (A : ApplicationDomain P W L) : applicationDomainClosed P W L A := by
  exact A.domainClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse