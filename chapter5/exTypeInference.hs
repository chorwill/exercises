module ExTypeInference where

-- 1. [Char] -> [Char]

myConcat x = x ++ " yo"

-- 2. Fractional a => a -> a

myMult x = (x / 3) * 5

-- 3. Int -> [Char]

myTake x = take x "hey you" 

-- 4. [Int] -> Bool

myCom x = x > (length [1..10])

-- 5. Char -> Bool

myAlph x = x < 'z'