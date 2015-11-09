module setTest

import set
import nat
import eq
import list

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

s4: bool
s4 = eql ((S O)::nil) ((S (S O))::nil)
--expect false

s5: bool
s5 = eql ((S O)::nil) ((S O)::nil)
--expect true

s6: bool
s6 = eql ((S (S (S O)))::(S (S O))::nil) ((S (S (S O)))::(S (S O))::nil)
--expect true

s7: bool
s7 = eql nil ((S O)::nil)
--expect false
