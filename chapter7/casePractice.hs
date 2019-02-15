module CasePractice where

functionC x y =
    case greater of
        True -> x
        False -> y
    where greater = x > y

ifEvenAdd2 n =
    case n `rem` 2 of
        0 -> n + 2
        _ -> n

nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        _ -> 0