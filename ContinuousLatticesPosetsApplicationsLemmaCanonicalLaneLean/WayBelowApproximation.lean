import continuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousLattice

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure WayBelowApproximationPackage {S : ScottTopologyPackage} (C : ContinuousLatticePackage S) where
  wayBelowSet : S.carrier → Set S.carrier
  isIdeal : Prop
  directification : Prop
  approximationViaIdeals : Prop

structure WayBelowApproximationEvidence {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    (W : WayBelowApproximationPackage C) where
  isIdealClosed : W.isIdeal
  directificationClosed : W.directification
  approximationViaIdealsClosed : W.approximationViaIdeals

def WayBelowApproximationClosed {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    (W : WayBelowApproximationPackage C) : Prop :=
  W.isIdeal ∧ W.directification ∧ W.approximationViaIdeals

theorem way_below_approximation_closed_from_evidence
    {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    (W : WayBelowApproximationPackage C) (E : WayBelowApproximationEvidence W) :
    WayBelowApproximationClosed W := by
  exact And.intro E.isIdealClosed (And.intro E.directificationClosed E.approximationViaIdealsClosed)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse