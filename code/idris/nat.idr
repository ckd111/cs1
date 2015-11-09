module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is even otherwise true
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))

result: nat
result = pf (S (S (S O)))

||| given a pair of natural numbers, return its product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp (mkPair n m)))

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

||| factorial
factp: nat -> nat
factp O = S O
factp (S n) = multp (mkPair (S n) (factp n))

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

expp: pair nat nat -> nat
expp (mkPair x O) = S O
expp (mkPair (S O) n) = S O
expp (mkPair x (S O)) = x
expp (mkPair x (S n)) = multp (mkPair (expp (mkPair x n)) x)

exp: nat -> nat -> nat
exp x O = S O
exp (S O) n = S O
exp x (S O) = x
exp x (S n) = mult (exp x n) x

lepp: pair nat nat -> bool
lepp (mkPair O O) = true
lepp (mkPair (S n) O) = false
lepp (mkPair O (S n)) = true
lepp (mkPair (S n) (S m)) = lepp (mkPair n m)

lep: nat -> nat -> bool
lep O O = true
lep (S n) O = false
lep O (S n) = true
lep (S n) (S m) = lep n m

eqpp: pair nat nat -> bool
eqpp (mkPair O O) = true
eqpp (mkPair (S n) O) = false
eqpp (mkPair O (S n)) = false
eqpp (mkPair (S n) (S m)) = eqpp (mkPair n m)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S n) = false
eql_nat (S n) (S m) = eql_nat n m

gtpp: pair nat nat -> bool
gtpp (mkPair n m) = not (lepp (mkPair n m))

gtp: nat -> nat -> bool
gtp n m = not (lep n m)

gepp: pair nat nat -> bool
gepp (mkPair O O) = true
gepp (mkPair (S n) O) = true
gepp (mkPair O (S n)) = false
gepp (mkPair (S n) (S m)) = gepp (mkPair n m)

gep: nat -> nat -> bool
gep O O = true
gep (S n) O = true
gep O (S n) = false
gep (S n) (S m) = gep n m

ltpp: pair nat nat -> bool
ltpp (mkPair n m) = not (gepp (mkPair n m))

ltp: nat -> nat -> bool
ltp n m = not (gep n m)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
