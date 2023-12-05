/-
# Homework #10

Computing id: eyz6xn

-/
namespace formal_logic
variable (Dog Cat : Type)

-- variables for the different likes situations
variable (likes1 : Dog → Cat → Prop)
variable (likes2 : Dog → Dog → Prop)
variable (likes3 : Cat → Cat → Prop)

-- 1. Every dog likes some cat
axiom dogsLikeSomeCats : ∀ (d : Dog), ∃ (c : Cat), likes1 d c
#check dogsLikeSomeCats

-- 2. any dog, d, likes any dog, g, and that dog, g, likes any dog, w, then d likes w.
axiom dogsLikingDogs : ∀ (d g w : Dog), likes2 d g → likes2 g w → likes2 d w
#check dogsLikingDogs

-- Problem #3: If any cat, c, likes any cat, d, then d also likes c.
axiom catsLikingEachother : ∀ (c d : Cat), likes3 c d → likes3 d c
#check catsLikingEachother

-- Problem #4: Every cat, c, likes itself.

axiom catsLikingItself : ∀ (c : Cat), likes3 c c
#check catsLikingItself

-- Problem #5: If every cat likes every other cat, and c and d are cats, then c likes d.
axiom catsLikingCats : ∀ (c d : Cat), (∀ (x y : Cat), likes3 x y) → likes3 c d
#check catsLikingCats
-- Formal proof for proposition #5
example : (∀ (c d : Cat), (∀ (x y : Cat), likes3 x y) → likes3 c d) :=
fun c d catsLikingCats => catsLikingCats c d

end formal_logic
