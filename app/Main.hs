module Main where

-- import FirstADT ( Client(Company, Individual, GovOrg), Person(Person), Gender (Male, Female) )
-- import Funcs

import FirstADT (Client (Company, GovOrg, Individual), ClientR (CompanyR, GovOrgR, IndividualR, clientRName, companyId, duty, person), Gender (Female, Male, Unknown), Person (Person), PersonR (PersonR, firstName, gender, lastName), countByGender, greet)
import TimeMachine (Address (Address), Producer (Producer), TimeDirection (Future), TimeMachine (TimeMachine))

main :: IO ()
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
  --   print (countByGender [Individual (Person "Ivan" "Ivanov" Male) True, Individual (Person "Vasya" "Pupkin" Unknown) False, GovOrg "NASA", Individual (Person "Olga" "Buzova" Female) False, Individual (Person "Valera" "Zhmyshenko" Male) True])
  print (greet IndividualR {person = PersonR {firstName = "Valera", lastName = "Zhmyshenko", gender = Male}})
  print (greet CompanyR {duty = "Director", person = PersonR {firstName = "Valera", lastName = "Zhmyshenko", gender = Male}, companyId = 1, clientRName = "Broiler 737"})
  print (greet GovOrgR {clientRName = "NASA"})