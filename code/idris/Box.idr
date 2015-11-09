module Box

import eq
import Serialize

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox b) = b

--eql_Box: (eq a) => Box a -> Box a -> bool
--eql_Box (mkBox v1) (mkBox v2) = eql v1 v2

--typeclass instances
instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2
-- eql v1  v2 = eql_Box v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ")"
