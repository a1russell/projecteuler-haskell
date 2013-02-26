module FibonacciSummer where


getFibonacciNumbers :: [Int]
getFibonacciNumbers = 1 : 2 : zipWith (+) getFibonacciNumbers (tail getFibonacciNumbers)

getFibonacciNumbersUpTo :: Int -> [Int]
getFibonacciNumbersUpTo maxNum = takeWhile (<= maxNum) (getFibonacciNumbers)

getEvenFibonacciNumbersUpTo :: Int -> [Int]
getEvenFibonacciNumbersUpTo maxNum = filter (even) (getFibonacciNumbersUpTo maxNum)

sumEvenFibonacciNumbersUpTo :: Int -> Int
sumEvenFibonacciNumbersUpTo maxNum = sum (getEvenFibonacciNumbersUpTo maxNum)
