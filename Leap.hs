module Leap where
    
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