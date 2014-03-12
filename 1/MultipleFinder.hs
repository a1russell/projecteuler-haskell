module MultipleFinder where

import qualified Control.Monad as M
import qualified Data.List as L

findMultiplesOf3And5Below :: Int -> [Int]
findMultiplesOf3And5Below maxMultiple = do
    let maxMultiple' = maxMultiple - 1
    x <- [1..maxMultiple']
    M.guard $ x `mod` 3 == 0 || x `mod` 5 == 0
    return x

sumMultiplesOf3And5Below :: Int -> Int
sumMultiplesOf3And5Below = sum . findMultiplesOf3And5Below
