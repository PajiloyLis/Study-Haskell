module Funcs where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst =
    if not (null lst)
        then head lst
        else "empty"

(+++) :: [a] -> [a] -> [a]
lst1 +++ lst2 =
    if null lst1
        then lst2
        else (head lst1) : (tail lst1 +++ lst2)

reverse2 :: [a] -> [a]
reverse2 lst =
    if null lst
        then []
        else reverse2 (tail lst) ++ [head lst]

maxmin :: (Ord a) => [a] -> (a, a)
maxmin lst =
    let h = head lst 
    in
        if null (tail lst)
            then (h, h)
            else (
                if h > t_max
                    then h
                    else t_max,
                if h < t_min
                    then h
                    else t_min
            )
        where t = maxmin(tail lst)
              t_max = fst t
              t_min = snd t