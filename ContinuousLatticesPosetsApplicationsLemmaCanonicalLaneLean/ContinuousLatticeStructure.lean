import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousPosetStructure

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousLatticePackage (P : ContinuousPosetPackage) where
  hasFiniteJoins : Prop
  hasFiniteMeets : Prop
  completeLattice : Prop
  wayBelowRelation : P.underlyingSet → P.underlyingSet → Prop
  wayBelowInterpolation : Prop
  latticeContinuity : Prop

structure ContinuousLatticeEvidence (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) where
  hasFiniteJoinsClosed : L.hasFiniteJoins
  hasFiniteMeetsClosed : L.hasFiniteMeets
  completeLatticeClosed : L.completeLattice
  wayBelowInterpolationClosed : L.wayBelowInterpolation
  latticeContinuityClosed : L.latticeContinuity

def ContinuousLatticeClosed (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) : Prop :=
  L.hasFiniteJoins ∧ L.hasFiniteMeets ∧ L.completeLattice ∧ L.latticeContinuity

theorem continuous_lattice_closed_from_evidence (P : ContinuousPosetPackage) (L : ContinuousLatticePackage P) (E : ContinuousLatticeEvidence P L) : ContinuousLatticeClosed P L :=
  And.intro E.hasFiniteJoinsClosed (And.intro E.hasFiniteMeetsClosed (And.intro E.completeLatticeClosed E.latticeContinuityClosed))

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse
