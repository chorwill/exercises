module Throwaway where
    import Data.Char (toUpper)

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

    doubleList :: [Int] -> [Int] -> [Int]
    doubleList processedList remainingList = 
        if (remainingList == [])
            then processedList
            else doubleList (processedList ++ [(head remainingList) * 2]) (tail remainingList)

    isCharPresent :: Char -> [Char] -> Bool
    isCharPresent needle remainingString =
        if (remainingString == [])
            then False
            else if (needle == (head remainingString))
                then True 
                else isCharPresent needle (tail remainingString)

    allCharsPresent :: [Char] -> [Char] -> Bool
    allCharsPresent remainingNeedles haystack =
        if (remainingNeedles == [])
            then True
            else if isCharPresent (head remainingNeedles) haystack
                then allCharsPresent (tail remainingNeedles) haystack
                else False
    
    evenList :: Int -> [Int] -> [Int]
    evenList n lst =
        if (n==0)
            then lst
            else if (mod n 2) == 0
                then evenList (n - 1) (n:lst)
                else evenList (n - 1) lst
