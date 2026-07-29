import continuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.WayBelowApproximation

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure FixedPointTheoremPackage {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    (W : WayBelowApproximationPackage C) where
  continuousFunction : S.carrier → S.carrier
  scottContinuity : Prop
  leastFixedPoint : S.carrier
  fixedPointProperty : Prop
  leastnessProperty : Prop

structure FixedPointTheoremEvidence {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} (F : FixedPointTheoremPackage W) where
  scottContinuityClosed : F.scottContinuity
  fixedPointPropertyClosed : F.fixedPointProperty
  leastnessPropertyClosed : F.leastnessProperty

def FixedPointTheoremClosed {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} (F : FixedPointTheoremPackage W) : Prop :=
  F.scottContinuity ∧ F.fixedPointProperty ∧ F.leastnessProperty

theorem fixed_point_theorem_closed_from_evidence
    {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} (F : FixedPointTheoremPackage W)
    (E : FixedPointTheoremEvidence F) : FixedPointTheoremClosed F := by
  exact And.intro E.scottContinuityClosed (And.intro E.fixedPointPropertyClosed E.leastnessPropertyClosed)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse