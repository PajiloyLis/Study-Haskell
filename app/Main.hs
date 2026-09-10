module Main where
import Funcs 
import FirstADT (Client(Individual))



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
    print(Individual "Jack" "Smith" True)
