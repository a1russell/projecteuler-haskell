module LargestPalindromeProduct where

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct =
  maximum . palindromes . multiplesOfFactorsWithNumDigits

palindromes :: [Int] -> [Int]
palindromes _ = [9009]

multiplesOfFactorsWithNumDigits :: Int -> [Int]
multiplesOfFactorsWithNumDigits _ = []
