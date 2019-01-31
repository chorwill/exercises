module VarietyPack where

-- a)  (a, b) -> a
-- b)  k2 :: ([Char], Num b => b) -> [Char]
-- c) k1 and k3

f :: (a, b, c)
-> (d, e, f)
-> ((a, d), (c, f))

f (a, b, c) (d, e, f) =  ((a, d) , (c, f))