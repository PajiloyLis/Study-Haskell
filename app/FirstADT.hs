module FirstADT where

import TimeMachine ()

data Client
  = GovOrg String
  | Company String Integer Person String
  | Individual Person Bool
  deriving (Show)

-- with records
data ClientR
  = GovOrgR {clientRName :: String}
  | CompanyR
      { clientRName :: String,
        companyId :: Integer,
        person :: PersonR,
        duty :: String
      }
  | IndividualR {person :: PersonR}
  deriving (Show)

data Person = Person String String Gender
  deriving (Show)

-- with records
data PersonR = PersonR
  { firstName :: String,
    lastName :: String,
    gender :: Gender
  }
  deriving (Show)

data Gender = Male | Female | Unknown
  deriving (Show)

data GenderStats = GenderStats Integer Integer Integer
  deriving (Show)

countByGender :: [Client] -> GenderStats
countByGender [] = GenderStats 0 0 0
countByGender (Individual (Person _ _ g) _ : rest) =
  let GenderStats male female unknown = countByGender rest
   in case g of
        Male -> GenderStats (male + 1) female unknown
        Female -> GenderStats male (female + 1) unknown
        Unknown -> GenderStats male female (unknown + 1)
countByGender (_ : rest) = countByGender rest

greet :: ClientR -> String
greet IndividualR {person = PersonR {firstName}} = "Hi, " ++ firstName
greet CompanyR {clientRName = cn} = "Hello, " ++ cn
greet GovOrgR {clientRName = cn} = "Welcome, " ++ cn
