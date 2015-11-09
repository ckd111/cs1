module natTest

import pair
import bool
import nat
import Serialize

-- data nat = O | S nat

hw1: nat
hw1 = add (S O) (S O)
--expect 2

hw2: nat
hw2 = add O (S O)
--expect 1

hw3: nat
hw3 = mult O (S (S (S O)))
--expect zero

hw4: nat
hw4 = mult (S (S O)) (S (S O))
--expect 4

hw5: nat
hw5 = fact O
--expect 1

hw6: nat
hw6 = fact (S (S (S O)))
--expect 6

hw7: nat
hw7 = exp (S (S O)) O
--expect 1

hw8: nat
hw8 = exp (S O) (S (S (S (S O))))
--expect 1

hw9: nat
hw9 = exp (S (S (S O))) (S O)
--expect 3

hw1O: nat
hw1O = exp (S (S (S O))) (S (S O))
--expect 9

hw11: bool
hw11 = lep O O
--expect true

hw12: bool
hw12 = lep (S O) O
--expect false

hw13: bool
hw13 = lep (S (S O)) (S (S (S O)))
--expect true

hw14: bool
hw14 = lep (S (S (S (S O)))) (S O)
--expect false

hw15: bool
hw15 = eqp (S O) (S O)
--expect true

hw16: bool
hw16 = eqp (S (S (S O))) (S O)
--expect false

hw17: bool
hw17 = gtp (S O) (S (S O))
--expect false

hw18: bool
hw18 = gtp (S (S (S (S O)))) (S (S O))
--expect true

hw19: bool
hw19 = gep (S (S O)) (S (S O))
--expect true

hw2O: bool
hw2O = gep (S (S (S O))) (S O)
--expect true

hw21: bool
hw21 = gep (S (S O)) (S (S (S (S O))))
--expect false

hw22: bool
hw22 = ltp (S (S O)) (S O)
--expect false

hw23: bool
hw23 = ltp (S (S O)) (S (S (S (S O))))
--expect true

hw24: bool
hw24 = ltp (S O) (S O)
--expect false


--b: bool
--b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

pf: nat -> nat
pf = add (S (S O))

result: nat
result = nat.pf (S (S (S O)))

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S nat.t

-- four
f: nat
f = S (S O)

q: nat
q = S nat.r

x: bool
x = isZero nat.r

y: nat
y = succ O

s: String
s = toString f
