module FirstADT where
import TimeMachine () 
import Data.Bits (FiniteBits(countLeadingZeros))

data Client = GovOrg String
    | Company String Integer Person
    | Individual Person Bool
    deriving Show

data Person = Person String String Gender
    deriving Show

data Gender = Male | Female | Unknown
    deriving Show

data GenderStats = GenderStats Integer Integer Integer
    deriving Show

countByGender :: [Client] -> GenderStats
countByGender [] = GenderStats 0 0 0
countByGender (Individual (Person _ _ g) _ : rest) =
    let GenderStats male female unknown = countByGender rest
    in
        case g of
            Male -> GenderStats (male + 1) female unknown
            Female -> GenderStats male (female + 1) unknown
            Unknown -> GenderStats male female (unknown + 1)
countByGender (_ : rest) = countByGender rest
