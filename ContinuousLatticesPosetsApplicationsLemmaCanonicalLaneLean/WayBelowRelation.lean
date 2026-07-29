import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.OrderBase

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure WayBelowRelation (L : ContinuousLattice) where
  wayBelow : L.carrier → L.carrier → Prop
  wayBelowAuxiliary : (x y : L.carrier) → wayBelow x y ↔
    ∀ D : Set L.carrier, DirectedOn (λ a b => L.le a b) D → L.le y (sup D) → ∃ d ∈ D, L.le x d
  interpolation : ∀ x y z : L.carrier, wayBelow x y → wayBelow y z → wayBelow x z
  approximatesContinuity : (x : L.carrier) → x = sup { y | wayBelow y x }
  wayBelowAuxiliaryTerm : wayBelowAuxiliary
  interpolationTerm : interpolation
  approximatesContinuityTerm : approximatesContinuity

structure WayBelowEvidence (L : ContinuousLattice) (W : WayBelowRelation L) where
  wayBelowAuxiliaryClosed : W.wayBelowAuxiliary
  interpolationClosed : W.interpolation
  approximatesContinuityClosed : W.approximatesContinuity

def WayBelowClosed (L : ContinuousLattice) (W : WayBelowRelation L) : Prop :=
  W.wayBelowAuxiliary ∧ W.interpolation ∧ W.approximatesContinuity

theorem way_below_closed_from_evidence (L : ContinuousLattice) (W : WayBelowRelation L)
    (E : WayBelowEvidence L W) : WayBelowClosed L W := by
  exact And.intro E.wayBelowAuxiliaryClosed
    (And.intro E.interpolationClosed E.approximatesContinuityClosed)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse