module ite

import bool

||| if then else
ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
