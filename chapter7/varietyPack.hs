module VarietyPack where

-- a)  (a, b) -> a
-- b)  k2 :: ([Char], Num b => b) -> [Char]
-- c) k1 and k3

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) =  ((a, d) , (c, f))

funcZ x = 
    case x + 1 == 1 of
        True -> "AWESOME"
        False -> "wut"

pal xs =
    case xs == reverse xs of
        True -> "yes"
        Flase -> "no"

pal' xs =
    case y of
        True -> "yes"
        False -> "no"
    where y = xs == reverse xs

    