module EqInstances where

data TisAnInteger =
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn v) (TisAn v') = v == v' 

data TwoIntegers = 
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two v a) (Two v' a') = v == v' && a == a' 

data StringOrInt = 
    TisAnInt Int 
   | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt v) (TisAnInt v') = v == v'
    (==) (TisAString s) (TisAString s') = s == s'
    (==) _ _ = False

data Pair a = 
    Pair a a 

instance Eq a => Eq (Pair a) where
    (==) (Pair a a') (Pair b b') = a == a' && b == b'

data Tuple a b =
    Tuple a b

instance (Eq a , Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = a == a' && b ==b'

data Which a =
    ThisOne a
    | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'

data EitherOr a b =
    Hello a
    | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'
