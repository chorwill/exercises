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