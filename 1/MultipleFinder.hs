module MultipleFinder where

import Data.List as L

findMultiplesOf3And5Below :: Int -> [Int]
findMultiplesOf3And5Below maxMultiple = sort . L.nub . concat $ do
    let maxMultiple' = maxMultiple - 1
    x <- [3,6..maxMultiple']
    y <- [5,10..maxMultiple']
    return [x, y]

sumMultiplesOf3And5Below :: Int -> Int
sumMultiplesOf3And5Below = sum . findMultiplesOf3And5Below
