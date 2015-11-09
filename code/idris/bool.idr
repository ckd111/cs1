module bool

import Serialize

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true


-- given a pair of bool values, (a,b), return true if both a and b are ture
--andp: pair bool bool -> bool
--andp (mkPair true true) = true
--andp (mkPair _ _) = false

-- binary func, implicit
and: bool -> bool -> bool
and true true = true
and _ _ = false

--given a pair of bool values (a,b) return false if both a and b are false
--orp: pair bool bool -> bool
--orp (mkPair false false) = false
--orp (mkPair _ _) = true

or: bool -> bool -> bool
or false false = false
or _ _ = true

-- given a pair of bool values (a,b) return false if both a and b are true
--nandp: pair bool bool -> bool
--nandp (mkPair true true) = false
--nandp (mkPair _ _) = true

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

-- given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
--xorp: pair bool bool -> bool
--xorp (mkPair true false) = true
--xorp (mkPair false true) = true
--xorp (mkPair _ _) = false

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _  _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
