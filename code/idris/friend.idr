module friend

-- is or isn't turstworthy, has name, age in years

import bool

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Tommy" 23

f2: friend
f2 = mkFriend false "Barry" 34

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
