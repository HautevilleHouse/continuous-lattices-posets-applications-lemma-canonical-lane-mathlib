import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousLattice where
  carrier : Type u
  le : carrier → carrier → Prop
  supPreservingDirected : Prop
  infPreservingFinite : Prop
  continuousCondition : (x : carrier) → (x = sup { y : carrier | y << x })
  le_refl : ∀ a : carrier, le a a
  le_trans : ∀ a b c : carrier, le a b → le b c → le a c
  le_antisymm : ∀ a b : carrier, le a b → le b a → a = b
  supPreservingDirectedTerm : supPreservingDirected
  infPreservingFiniteTerm : infPreservingFinite

structure ContinuousLatticeEvidence (L : ContinuousLattice) where
  supPreservingDirectedClosed : L.supPreservingDirected
  infPreservingFiniteClosed : L.infPreservingFinite
  continuousConditionClosed : ∀ x : L.carrier, x = sup { y : L.carrier | L.le y x }

def ContinuousLatticeClosed (L : ContinuousLattice) : Prop :=
  L.supPreservingDirected ∧ L.infPreservingFinite ∧
  (∀ x : L.carrier, x = sup { y : L.carrier | L.le y x })

theorem continuous_lattice_closed_from_evidence (L : ContinuousLattice)
    (E : ContinuousLatticeEvidence L) : ContinuousLatticeClosed L := by
  refine And.intro E.supPreservingDirectedClosed
    (And.intro E.infPreservingFiniteClosed ?_)
  exact E.continuousConditionClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse