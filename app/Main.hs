module Main where
    
-- import FirstADT ( Client(Company, Individual, GovOrg), Person(Person), Gender (Male, Female) )
-- import Funcs
import TimeMachine (TimeMachine (TimeMachine), Producer (Producer), Address (Address), TimeDirection (Future))
import FirstADT (countByGender, Client (Individual, GovOrg, Company), Person (Person), Gender (Male, Unknown, Female))



main ::IO ()
main = do
    -- print(firstOrEmpty [])
    -- print(firstOrEmpty ["hello"])
    -- print(['a', 'b']+++['c', 'd'])
    -- print([1, 2]+++[3, 4])
    -- print(["hello ", ","]+++["world", "!"])
    -- print(reverse2 "abc")
    -- print(reverse2 [1, 2, 3])
    -- print( fst (maxmin [1, 2, 3, 4, 5]))
    -- print( snd (maxmin [1, 2, 3, 4, 5]))
    -- print(Individual (Person "Jack" "Smith" Male) True)
    -- print(Company "Roga i kopyta" 1 (Person "Vitaliy" "zhmyshenko" Male))
    -- print(Person "Olga" "Buzova" Female)
    -- print(GovOrg "NASA")
    -- print(TimeMachine (Producer "General Electric" (Address "USA" "Boston" "street" "house")) 1 "Super Duper TM" Future 2599.99)
    print(countByGender [Individual (Person "Ivan" "Ivanov" Male) True, Individual (Person "Vasya" "Pupkin" Unknown) False, GovOrg "NASA", Individual (Person "Olga" "Buzova" Female) False, Individual (Person "Valera" "Zhmyshenko" Male) True])
