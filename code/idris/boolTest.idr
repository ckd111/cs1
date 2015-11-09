module boolTest

import bool
import pair
import Serialize

and_t_t: bool
and_t_t = and true true
--expect true

and_t_f: bool
and_t_f = and true false
--expect false

and_f_t: bool
and_f_t = and false true
--expect false

and_f_f: bool
and_f_f = and false false
--expect false

or_f_f: bool
or_f_f = or false false
--expect false

or_f_t: bool
or_f_t = or false true
--expect true

or_t_f: bool
or_t_f = or true false
--expect true

or_t_t: bool
or_t_t = or true true
--expect true

nand_t_t: bool
nand_t_t = nand true true
--expect false

nand_t_f: bool
nand_t_f = nand true false
--expect true

nand_f_t: bool
nand_f_t = nand false true
--expect true

nand_f_f: bool
nand_f_f = nand false false
--expect true

xor_t_f: bool
xor_t_f = xor true false
--expect true

xor_f_t: bool
xor_f_t = xor false true
--expect true

xor_f_f: bool
xor_f_f = xor false false
--expect false

xor_t_t: bool
xor_t_t = xor true true
--expect false

s: String
s = toString true
