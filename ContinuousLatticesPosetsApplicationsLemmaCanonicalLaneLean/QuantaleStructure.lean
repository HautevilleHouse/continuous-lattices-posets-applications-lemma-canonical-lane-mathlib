import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean

structure Quantale (Q : Type u) where
  partialOrder : PartialOrder Q
  supSemilattice : SemilatticeSup Q
  monoid : Monoid Q
  multiplicationDistributesOverSup : ∀ (a : Q) (S : Set Q), a * sup S = sup {a * s | s ∈ S}
  multiplicationDistributesOverSup' : ∀ (S : Set Q) (a : Q), (sup S) * a = sup {s * a | s ∈ S}
  multiplicationDistributesOverSupTerm : multiplicationDistributesOverSup
  multiplicationDistributesOverSup'Term : multiplicationDistributesOverSup'

def QuantaleClosed (Q : Quantale Q) : Prop :=
  Q.multiplicationDistributesOverSup ∧ Q.multiplicationDistributesOverSup'

theorem quantale_closed_from_structure (Q : Quantale Q) : QuantaleClosed Q := by
  exact And.intro Q.multiplicationDistributesOverSupTerm Q.multiplicationDistributesOverSup'Term

end ContinuousLatticesPosetsApplicationsLemmaCanonicalLaneLean
end HautevilleHouse
