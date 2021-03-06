module Leap where
    import Data.Char
    
    isLeapYear :: Int -> Bool
    isLeapYear yr = 
        if (mod yr 4) /= 0 
            then False
            else if (mod yr 100) /= 0 
                then True
                else if (mod yr 400) == 0
                    then True
                    else False

    multipleSum :: Int -> Int -> Int
    multipleSum currentNumber total =
        if currentNumber == 0
            then total
            else if (mod currentNumber 3) == 0
                then multipleSum (currentNumber - 1) (total + currentNumber)
                else if (mod currentNumber 5) == 0
                    then multipleSum (currentNumber - 1) (total + currentNumber)
                    else multipleSum (currentNumber -1) total

    square :: Int -> Int
    square x = x * x
    
    sumOfSquares :: Int -> Int -> Int
    sumOfSquares remainingCount total =
        if remainingCount == 0
            then total
            else sumOfSquares (remainingCount - 1) (total + (square remainingCount))
    
    squareOfSum :: Int -> Int -> Int
    squareOfSum remainingCount total =
        if remainingCount == 0
            then square total
            else squareOfSum (remainingCount - 1) (total + remainingCount)
 
    difference :: Int -> Int
    difference n = (squareOfSum n 0) - (sumOfSquares n 0)
    
    fibonacci :: Int -> Int
    fibonacci 0 = 0
    fibonacci 1 = 1
    fibonacci n = fibonacci (n-1) + fibonacci (n-2)

    evenSum :: Int -> Int -> Int -> Int
    evenSum maxValue n total =
        if total > maxValue
            then total - fibonacci (n-1)
            else if (mod (fibonacci n) 2) == 0 
                then evenSum maxValue (n+1) (total + (fibonacci n))
                else evenSum maxValue (n+1) (total)

    removeHyphen :: String -> String
    removeHyphen isbn = filter isNumber isbn

    digits:: String -> [Int]
    digits isbn = map digitToInt (removeHyphen isbn)

    checkDigits :: String -> Int
    checkDigits isbn = sum (zipWith (*) (digits isbn) [10,9,8,7,6,5,4,3,2,1])
                
    isValidIsbn :: String -> Bool
    isValidIsbn isbn = 
        if mod (checkDigits isbn) 11 == 0 && length (digits isbn) == 10
                then True
                else False


        
    
        
        