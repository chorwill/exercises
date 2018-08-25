module Throwaway where

    addNumbers :: Int
    addNumbers = 10 + 2

    addInts :: Int -> Int -> Int
    addInts x y = x + y

    checkNumber :: Int -> String
    checkNumber y = 
        if (mod y 2) == 0
            then "even"
            else "odd"

    sumOfList :: Int -> [Int] -> Int
    sumOfList total lst = 
        if (lst == [])
            then total
            else sumOfList (total + (head lst)) (tail lst)


