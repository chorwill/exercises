module GrabBag where

-- 1. All equivalent
-- 2. Num a => a -> a -> a

addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1

addFive = \x -> \y -> 
    (if x > y
        then y
        else x
    )
    + 5

mflip f x y = f y x