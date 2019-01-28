module OrdInstances where

data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving (Ord, Show, Eq)

