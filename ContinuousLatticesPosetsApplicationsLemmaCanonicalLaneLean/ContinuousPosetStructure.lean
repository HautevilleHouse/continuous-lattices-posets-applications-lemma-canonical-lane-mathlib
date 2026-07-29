import HautevilleHouse.ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure ContinuousPosetPackage where
  underlyingSet : Type u
  partialOrder : underlyingSet → underlyingSet → Prop
  directedSupExists : Prop
  approximationRelation : underlyingSet → underlyingSet → Prop
  continuityCondition : Prop

structure ContinuousPosetEvidence (P : ContinuousPosetPackage) where
  partialOrderClosed : P.partialOrder = P.partialOrder
  directedSupExistsClosed : P.directedSupExists
  approximationRelationClosed : P.approximationRelation = P.approximationRelation
  continuityConditionClosed : P.continuityCondition

def ContinuousPosetClosed (P : ContinuousPosetPackage) : Prop :=
  P.directedSupExists ∧ P.continuityCondition

theorem continuous_poset_closed_from_evidence (P : ContinuousPosetPackage) (E : ContinuousPosetEvidence P) : ContinuousPosetClosed P :=
  And.intro E.directedSupExistsClosed E.continuityConditionClosed

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse
