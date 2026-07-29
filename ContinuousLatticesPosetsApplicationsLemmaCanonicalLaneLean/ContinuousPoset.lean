import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousPoset where
  carrier : Type u
  partialOrder : PartialOrder carrier
  directedSup : (carrier → Prop) → carrier
  continuousCondition : Prop

def continuousPosetConditions (P : ContinuousPoset) : Prop :=
  P.continuousCondition

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse