module SumSquareDifference where

sumSquares :: [Int] -> Int
sumSquares = sum . map (^2)

squareSum :: [Int] -> Int
squareSum = (^2) . sum

sumSquareDifference :: [Int] -> Int
sumSquareDifference xs = (squareSum xs) - (sumSquares xs)
