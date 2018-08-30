module Throwaway where
    import Data.List

    addNumbers :: Int
    addNumbers = 10 + 20

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
    
    sumOfEven :: Int -> [Int] -> Int
    sumOfEven total lst = 
        if (lst == [])
            then total
            else if (mod (head lst) 2) == 0  
                then sumOfEven (total + (head lst)) (tail lst)
                else sumOfEven total (tail lst) 

    
