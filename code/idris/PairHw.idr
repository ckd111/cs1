module people

import pair

data people = Maurice | Mary

love: people -> people
love _ = Maurice

p1: pair people people
p1 = mkPair Mary Maurice

p2: pair people people
p2 = mkPair Maurice Maurice
