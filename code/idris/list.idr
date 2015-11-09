module list

import nat
import ite
import bool
import eq
import Serialize

data list a = nil | (::) a (list a)

infixr 7 ::,++

length: list a -> nat
length nil = O
length (h::t) = S (length t)

(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

l3: nat
l3 = length nil {a=nat}

||| map a func over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| give a list and a predicate on elements, return the sublist for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = (S O)
fancymult (h::t) = mult h (fancymult t)

fancyappend: list String -> String
fancyappend nil = ""
fancyappend (h::t) = h ++ (fancyappend t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

--eql: a -> a -> bool
--eql v1 v2 = ?hole

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) =
    and (eql h1 h2) (eql t1 t2)


subset_element: (eq a) => list a -> list a -> bool
subset_element nil l1 = true
subset_element (h::t) l2 = and (member h l2) (subset_element t l2)

same_element: (eq a) => list a -> list a -> bool
same_element l1 l2 = and (subset_element l1 l2) (subset_element l2 l1)

toStringList:(Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"
