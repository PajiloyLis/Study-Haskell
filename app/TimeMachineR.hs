module TimeMachineR where

data TimeMachineR = TimeMachineR
  { producer :: Producer,
    modelId :: Integer,
    modelName :: String,
    timeDirection :: TimeDirection,
    cost :: Double
  }
  deriving (Show)

data Producer = Producer
  { name :: String,
    address :: Address
  }
  deriving (Show)

data Address = Address
  { country :: String,
    city :: String,
    street :: String,
    house :: Integer
  }
  deriving (Show)

data TimeDirection = Future | Past
  deriving (Show)

discount :: [TimeMachineR] -> Double -> [TimeMachineR]
discount [] _ = []
discount (p@TimeMachineR{cost} : rest) percent =
  p{cost = (cost * (1 - percent / 100))}
    : discount rest percent
