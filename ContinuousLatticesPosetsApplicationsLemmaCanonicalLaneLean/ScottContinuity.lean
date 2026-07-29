import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.OrderBase

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ScottContinuousMap (L M : ContinuousLattice) where
  f : L.carrier → M.carrier
  monotone : ∀ a b : L.carrier, L.le a b → M.le (f a) (f b)
  preservesDirectedSup : ∀ (D : Set L.carrier), DirectedOn (λ x y => L.le x y) D →
    f (sup D) = sup (f '' D)
  monotoneTerm : monotone
  preservesDirectedSupTerm : preservesDirectedSup

structure ScottContinuityEvidence (L M : ContinuousLattice) (φ : ScottContinuousMap L M) where
  monotoneClosed : φ.monotone
  preservesDirectedSupClosed : φ.preservesDirectedSup

def ScottContinuityClosed (L M : ContinuousLattice) (φ : ScottContinuousMap L M) : Prop :=
  φ.monotone ∧ φ.preservesDirectedSup

theorem scott_continuity_closed_from_evidence (L M : ContinuousLattice)
    (φ : ScottContinuousMap L M) (E : ScottContinuityEvidence L M φ) :
    ScottContinuityClosed L M φ := by
  exact And.intro E.monotoneClosed E.preservesDirectedSupClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse