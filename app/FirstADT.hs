module FirstADT where

data Client = GovOrg String
    | Compant String Integer String String
    | Individual String String Bool
    deriving Show