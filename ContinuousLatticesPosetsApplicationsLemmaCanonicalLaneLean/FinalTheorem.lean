import continuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

def ConstrainedContinuousLatticesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_lattices_endgame (A : AdmissibleClass) :
    ConstrainedContinuousLatticesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse