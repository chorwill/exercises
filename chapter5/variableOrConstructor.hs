{-# LANGUAGE NoMonomorphismRestriction #-}

module VariableOrConstructor where

    functionH :: [a] -> a
    functionH (x:_) = x

    functionC :: Ord a => a -> a -> Bool
    functionC x y =
        if (x > y) then True else False

    functionS :: (a, b) -> b
    functionS (x, y) = y

    myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
    myFunc xToY yToZ _ (a, x) = (a, (yToZ (xToY x)))

    i :: a -> a
    i x = x 

    c :: a -> b -> a
    c x y = x 

    c'' :: b -> a -> b
    c'' y x = y

    c' :: a -> b -> b
    c' x y = y

    r :: [a] -> [a]
    r listA =  listA