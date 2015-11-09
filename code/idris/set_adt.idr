module set_adt

import bool
import eq
import nat
import option
import pair
import Serialize
-- A polymorphic set type. We interpret values of type (set a) as
-- representing sets of values of type a.
  data set: (a: Type) -> Type

emptySet: set a

-- If s is empty then true, otherwise false
isEmpty: (s: set a) -> bool

-- Return the set, s union {v}
set_insert: (eq a) => (v: a) -> (s: set a) -> set a

-- Return the set, s - {v}
set_remove: (eq a) => (v: a) -> (s: set a) -> set a

-- Return the number of elements in s
set_cardinality: (s: set a) -> nat

-- If v is in s return true, otherwise false
set_member: (eq a) => (v: a) -> (s: set a) -> bool

-- Return union of s1 and s2
set_union: (eq a) => (s1: set a) -> (s2: set a) -> set a

-- Return the intersection of s1 and s2
set_intersection: (eq a) => (s1: set a) -> (s2: set a) -> set a

-- Return the set difference, s1 minus s2
set_difference: (eq a) => (s1: set a) -> (s2: set a) -> set a

-- Return true p is true for every v in s, otherwise false
set_forall: (p: a -> bool) -> (s: set a) -> bool


-- Return true if p is true for some v in s, otherwise else false
set_exists: (p: a -> bool) -> (s: set a) -> bool


-- If (set_exists p s), return (some v) such that (p v) is true, else
-- return none. We need to return an option because there might not be
-- an element in s with property p.  If there is such an element, we
-- call it a "witness to the property p."
set_witness: (p: a -> bool) -> (s: set a) -> option a

-- Return the cartesian product of s1 and s2.
set_product: (s1: set a) -> (s2: set b) -> set (pair a b)

-- Extra credit: Return the set of all sets of elements of s.
set_powerset: (s: set a) -> set (set a)

-- return true if s1 and s2 are equal, else false
set_eql: (eq a) => (s1: set a) -> (s2: set a) -> bool

-- Return a string representation of s
set_toString: (Serialize a) => set a -> String

instance (eq a) => eq (set a) where
  eql s1 s2 = set_eql s1 s2

instance (Serialize a) => Serialize (set a) where
  toString s = set_toString s

