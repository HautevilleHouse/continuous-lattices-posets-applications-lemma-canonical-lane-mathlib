import continuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousLatticeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LatticeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse