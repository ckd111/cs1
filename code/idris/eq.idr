module eq

import public bool

class eq a where
  eql : a -> a -> bool

-- create an instance of a type class

instance eq bool where
  eql b1 b2 = eql_bool b1 b2

--nat instance in nat file
