module Exercises where

-- 4.3 Mood Swings
--    1. Mood
--    2. Blah and Woot
--    3. changeMood :: Mood -> Mood

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

-- 4.6
-- 1. not True && True
-- 2. x is not in scope
-- 3. False
-- 4. True
-- 5. Not same type

-- 4.9 
-- 1. length :: Foldable t => t a -> Int
-- a) 5 b) 3 c) 2 d) 5
-- 3. Fractional output of length is int, need to use div
-- 4. 6 `div` length [1, 2, 3]
-- 5. Int -> Int -> Bool, TRUE
-- 6. Bool
-- 7. True, won't work different types in list, 5, False, not Bool

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = 
    if x > 0
        then x
        else -x

f :: (a,b) -> (c,d) -> ((b,d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))