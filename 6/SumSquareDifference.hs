module SumSquareDifference where

sumSquares :: [Int] -> Int
sumSquares = sum . map (^2)
