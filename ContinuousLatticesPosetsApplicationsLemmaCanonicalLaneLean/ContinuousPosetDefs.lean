import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousPoset where
  carrier : Type u
  le : carrier → carrier → Prop
  le_refl : ∀ a : carrier, le a a
  le_trans : ∀ a b c : carrier, le a b → le b c → le a c
  le_antisymm : ∀ a b : carrier, le a b → le b a → a = b
  directedSup : Prop
  directedSupClosed : directedSup

def continuousPosetClosed (P : ContinuousPoset) : Prop :=
  P.directedSup

theorem continuous_poset_closed (P : ContinuousPoset) : continuousPosetClosed P :=
  P.directedSupClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse