module dnaTest

import dna

complementT: base
complementT = complement_base T
--expect A

complementA: base
complementA = complement_base A
--expect T

complementC: base
complementC = complement_base C
--expect G

complementG: base
complementG = complement_base G
--expect T


