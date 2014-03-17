module SmallestMultiple where

smallestMultiple :: [Int] -> Int
smallestMultiple = foldr1 lcm
