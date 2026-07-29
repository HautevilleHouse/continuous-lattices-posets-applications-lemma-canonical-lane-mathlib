import continuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.FixedPointTheorem

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ApplicationsLemmaPackage {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} (F : FixedPointTheoremPackage W) where
  computationalInterpretation : Prop
  denotationalSemantics : Prop
  abstractInterpretation : Prop
  lemmaStatement : Prop

structure ApplicationsLemmaEvidence {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} {F : FixedPointTheoremPackage W}
    (A : ApplicationsLemmaPackage F) where
  computationalInterpretationClosed : A.computationalInterpretation
  denotationalSemanticsClosed : A.denotationalSemantics
  abstractInterpretationClosed : A.abstractInterpretation
  lemmaStatementClosed : A.lemmaStatement

def ApplicationsLemmaClosed {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} {F : FixedPointTheoremPackage W}
    (A : ApplicationsLemmaPackage F) : Prop :=
  A.computationalInterpretation ∧ A.denotationalSemantics ∧ A.abstractInterpretation ∧ A.lemmaStatement

theorem applications_lemma_closed_from_evidence
    {S : ScottTopologyPackage} {C : ContinuousLatticePackage S}
    {W : WayBelowApproximationPackage C} {F : FixedPointTheoremPackage W}
    (A : ApplicationsLemmaPackage F) (E : ApplicationsLemmaEvidence A) :
    ApplicationsLemmaClosed A := by
  exact And.intro E.computationalInterpretationClosed
    (And.intro E.denotationalSemanticsClosed
      (And.intro E.abstractInterpretationClosed E.lemmaStatementClosed))

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse