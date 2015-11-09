module Blacklist

-- One of my current TV show obsessions is The Blacklist
--These are a list of criminals on Reddington's blacklist
-- Given is their number on the blacklist, name, country of origin, and if living or deceased

import list

record Blacklist where
    constructor MkBlacklist
    number : Nat
    name : String
    country : String
    alive : Bool

lb: Blacklist
lb = MkBlacklist 21 "Luther Braxton" "USA" False

km: Blacklist
km = MkBlacklist 42 "Kingmaker" "UK" False

sk: Blacklist
sk = MkBlacklist 161 "Stanley Kornish" "USA" False

mk: Blacklist
mk = MkBlacklist 8 "Milos Kirchoff" "Russia" False

nw: Blacklist
nw = MkBlacklist 109 "Nathaniel Wolff" "Germany" True

blacklist: list Blacklist
blacklist = lb::km::sk::mk::nw::nil
