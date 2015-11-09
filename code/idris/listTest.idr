module listTest

import list
import nat
import eq
import Serialize

--length test cases
lO: list nat
lO = nil


hw1: nat
hw1 = length lO

hw2: nat
hw2 = length l1

hw3: nat
hw3 = length l2

--append test cases
hw4: list nat
hw4 = append nil l2

hw5: list nat
hw5 = append l1 l2


--length': list a -> nat
--length' nil = O
--length' (n :: l') = S (length' l')

--append': list a -> list a -> list a
--append' nil l2 = l2
--append' (n :: l1') l2 = n :: (append' l1' l2)


li: list bool
li = true :: false :: true :: true :: nil

lO: list nat
lO = nil

l1: list nat
l1 = nil

l2: list nat
l2 = (S O) :: (S (S O)) :: nil

append: list a -> list a -> list a
append nil l2 = l2
append (h::l1') l2 = h::(append l1' l2)

isThree: bool
isThree = (member (S (S (S O))) l2)

s: String
s = toString l2
