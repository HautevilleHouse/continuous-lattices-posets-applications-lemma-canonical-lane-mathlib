import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousLattice

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

def ConstrainedContinuousLatticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_lattice_endgame (A : AdmissibleClass) :
    ConstrainedContinuousLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse