module TimeMachine where

data TimeMachine = TimeMachine Producer Integer String TimeDirection Double
  deriving (Show)

data Producer = Producer String Address
  deriving (Show)

data Address = Address String String String String
  deriving (Show)

data TimeDirection = Future | Past
  deriving (Show)

discount :: [TimeMachine] -> Double -> [TimeMachine]
discount [] _ = []
discount (TimeMachine producer year model direction price : rest) percent =
  TimeMachine producer year model direction (price * (1 - percent / 100))
    : discount rest percent
