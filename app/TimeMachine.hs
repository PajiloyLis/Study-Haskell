module TimeMachine where

data TimeMachine = TimeMachine Producer Integer String TimeDirection Double
    deriving Show

data Producer = Producer String Address
    deriving Show

data Address = Address String String String String
    deriving Show

data TimeDirection = Future | Past
    deriving Show