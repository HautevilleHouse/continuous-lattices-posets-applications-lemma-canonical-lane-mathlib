import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousLatticeStructure

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ApplicationDomainPackage (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) where
  fixpointTheorem : Prop
  domainTheoryEmbedding : Prop
  approximationLemma : Prop
  scottContinuity : Prop

structure ApplicationDomainEvidence (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) (A : ApplicationDomainPackage P L) where
  fixpointTheoremClosed : A.fixpointTheorem
  domainTheoryEmbeddingClosed : A.domainTheoryEmbedding
  approximationLemmaClosed : A.approximationLemma
  scottContinuityClosed : A.scottContinuity

def ApplicationDomainClosed (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) (A : ApplicationDomainPackage P L) : Prop :=
  A.fixpointTheorem ∧ A.approximationLemma ∧ A.scottContinuity

theorem application_domain_closed_from_evidence (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) (A : ApplicationDomainPackage P L) (E : ApplicationDomainEvidence P L A) : ApplicationDomainClosed P L A :=
  And.intro E.fixpointTheoremClosed (And.intro E.approximationLemmaClosed E.scottContinuityClosed)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse
