import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ScottOpenSet (P : Type u) [PartialOrder P] (U : Set P) where
  upwardClosed : ∀ x y, x ∈ U → x ≤ y → y ∈ U
  inaccessibleByDirectedSup : (D : Set P) → DirectedOn (· ≤ ·) D → sup D ∈ U → D ∩ U ≠ ∅
  upwardClosedTerm : upwardClosed
  inaccessibleByDirectedSupTerm : inaccessibleByDirectedSup

structure ScottTopology (P : Type u) [PartialOrder P] where
  openSets : Set (Set P)
  openSetsClosedUnderFiniteIntersections : ∀ (U V : Set P), U ∈ openSets → V ∈ openSets → U ∩ V ∈ openSets
  openSetsClosedUnderArbitraryUnions : ∀ (F : Set (Set P)), F ⊆ openSets → ⋃₀ F ∈ openSets
  openSetsContainsEmptyAndWhole : ∅ ∈ openSets ∧ Set.univ ∈ openSets
  openSetsAreScottOpen : ∀ (U : Set P), U ∈ openSets → ScottOpenSet P U
  openSetsClosedUnderFiniteIntersectionsTerm : openSetsClosedUnderFiniteIntersections
  openSetsClosedUnderArbitraryUnionsTerm : openSetsClosedUnderArbitraryUnions
  openSetsContainsEmptyAndWholeTerm : openSetsContainsEmptyAndWhole
  openSetsAreScottOpenTerm : openSetsAreScottOpen

def ScottTopologyClosed (T : ScottTopology P) : Prop :=
  T.openSetsClosedUnderFiniteIntersections ∧ T.openSetsClosedUnderArbitraryUnions ∧
  T.openSetsContainsEmptyAndWhole ∧ T.openSetsAreScottOpen

theorem scott_topology_closed_from_structure (T : ScottTopology P) : ScottTopologyClosed T := by
  exact And.intro T.openSetsClosedUnderFiniteIntersectionsTerm
    (And.intro T.openSetsClosedUnderArbitraryUnionsTerm
      (And.intro T.openSetsContainsEmptyAndWholeTerm T.openSetsAreScottOpenTerm))

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse
