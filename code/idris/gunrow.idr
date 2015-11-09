module gunrow

import list_nat

data country = Argentina | Australia | Austria | Honduras | USA

|||A record of this type represents a country and the death rate per 1OM
|||by gun for homicides, suicides, unintentional, other

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

aussie: gunrow
aussie = mkGunrow Australia 11 62 5 8

austria: gunrow
austria = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherdeathsPer10M: gunrow -> Nat
otherdeathsPer10M (mkGunrow c h s u o) = o

listgunrow: list gunrow
listgunrow = (cons argen (cons aussie (cons austria (cons hond (cons usa nil)))))
