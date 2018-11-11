module Exercises where

-- 4.3 Mood Swings
--    1. Mood
--    2. Blah and Woot
--    3. changeMood :: Mood -> Mood

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah