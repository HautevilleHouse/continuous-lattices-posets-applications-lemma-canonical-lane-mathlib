import canonicalLaneMathlib.AdmissibleClass
import ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.ContinuousPoset

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | ContinuousLatticeObj P => True
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed; cases h : A.object; exact True.intro

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse