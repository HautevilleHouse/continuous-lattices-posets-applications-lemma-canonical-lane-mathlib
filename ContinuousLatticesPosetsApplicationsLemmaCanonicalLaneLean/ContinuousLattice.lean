import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ScottTopology
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.DomainTheory

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousLattice (P : ContinuousPoset) (S : ScottTopology P) (D : DomainTheory P (by
    exact default)) where
  completeLattice : CompleteLattice P.carrier
  continuousCondition : Prop
  completeLatticeClosed : completeLattice.IsComplete
  continuousConditionClosed : continuousCondition

def ContinuousLatticeClosure (P : ContinuousPoset) (S : ScottTopology P) (D : DomainTheory P (by exact default)) (L : ContinuousLattice P S D) : Prop :=
  L.continuousCondition ∧ L.completeLatticeClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse