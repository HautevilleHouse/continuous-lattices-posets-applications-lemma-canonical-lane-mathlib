import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousPoset

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ScottTopology (P : ContinuousPoset) where
  openSets : Set (Set P.carrier)
  directedUnionClosed : Prop
  lowerClosed : Prop
  scottOpenClosed : directedUnionClosed ∧ lowerClosed

def ScottTopologyClosure (P : ContinuousPoset) (S : ScottTopology P) : Prop :=
  S.directedUnionClosed ∧ S.lowerClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse