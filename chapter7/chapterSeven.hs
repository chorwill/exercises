module ChapterSeven where

myNum :: Integer
myNum = 1

myVal f = f + myNum

addOne :: Integer -> Integer
addOne x = x + 1

bindExp :: Integer -> String
bindExp x =
    let x = 10; y = 5 in
        "the integer was: "
        ++ show x ++ " and y was: "

triple :: Integer -> Integer
triple x = x * 3

isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False