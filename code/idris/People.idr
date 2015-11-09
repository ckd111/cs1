module People

import Person
import bool
import list

tom: Person
tom = mkPerson "Tom" 19

mary: Person
mary = mkPerson "Mary" 25

daryl: Person
daryl = mkPerson "Daryl" 43

people: list Person
people = tom::mary::daryl::nil

mapAge: list Person -> list Nat
mapAge (h::t) = (age h)::(mapAge t)
