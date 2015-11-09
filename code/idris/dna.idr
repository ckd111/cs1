module dna

import pair
import list
import nat
import bool

data base = A | T | C | G

--complements A&T, C&G
complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand base = list.map complement_base base


strand1: list (pair base base) -> list base
strand1 liststrand1 = map fst liststrand1
-- nil = nil
--strand1 (mkPair h::t)

strand2: list (pair base base) -> list base
strand2 liststrand2 = map snd liststrand2

fdnapair: base -> pair base base
fdnapair A = (mkPair A T)
fdnapair T = (mkPair T A)
fdnapair C = (mkPair C G)
fdnapair G = (mkPair G C)

complete: list base -> list (pair base base)
complete completebase = map fdnapair completebase

---countBase that takes both a list base, representing a strand of DNA, and a particular base, and that
---returns the number of occurrences of that base in the given strand (as a natural number). Your function
---must use map and foldr. Hint, use a function that converts the list of bases into a list of zeros and ones
--- dependending on whether bases in the list match the given base, then use foldr to reduce the resulting list
---by summing up all the ones and zeros

isEqu: base -> base -> nat
isEqu A A = S O
isEqu T T = S O
isEqu C C = S O
isEqu G G = S O
isEqu _ _  = O

countBase: base -> list base -> nat
countBase query lt = list.foldr add O (map (isEqu query) lt)
