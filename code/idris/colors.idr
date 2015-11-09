module colors

import bool
import pair

data color = red | blue | yellow | green | cyan | magenta

complement: color -> color
complement red = cyan
complement yellow = blue
complement green = magenta
complement cyan = red
complement blue = yellow
complement magenta = blue

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive cyan = true
subtractive yellow = true
subtractive magenta = true
subtractive _ = false

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
