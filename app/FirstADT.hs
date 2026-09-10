module FirstADT where

data Client = GovOrg String
    | Company String Integer Person
    | Individual Person Bool
    deriving Show

data Person = Person String String Gender
    deriving Show

data Gender = Male | Female | Unknown
    deriving Show
