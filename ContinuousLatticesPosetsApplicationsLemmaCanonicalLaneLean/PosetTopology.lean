import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.OrderBase

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure PosetTopology (L : ContinuousLattice) where
  opens : Set (Set L.carrier)
  isScottOpen : (U : Set L.carrier) → (U ∈ opens) ↔
    (IsUpperSet U ∧ ∀ (D : Set L.carrier), DirectedOn (· ≤ ·) D → sup D ∈ U → (D ∩ U).Nonempty)
  openInter : ∀ (U V : Set L.carrier), U ∈ opens → V ∈ opens → U ∩ V ∈ opens
  openUnion : ∀ (F : Set (Set L.carrier)), F ⊆ opens → ⋃₀ F ∈ opens
  isScottOpenTerm : isScottOpen
  openInterTerm : openInter
  openUnionTerm : openUnion

structure PosetTopologyEvidence (L : ContinuousLattice) (T : PosetTopology L) where
  isScottOpenClosed : T.isScottOpen
  openInterClosed : T.openInter
  openUnionClosed : T.openUnion

def PosetTopologyClosed (L : ContinuousLattice) (T : PosetTopology L) : Prop :=
  T.isScottOpen ∧ T.openInter ∧ T.openUnion

theorem poset_topology_closed_from_evidence (L : ContinuousLattice) (T : PosetTopology L)
    (E : PosetTopologyEvidence L T) : PosetTopologyClosed L T := by
  exact And.intro E.isScottOpenClosed
    (And.intro E.openInterClosed E.openUnionClosed)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse