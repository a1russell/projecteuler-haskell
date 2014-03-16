module LargestPalindromeProduct where

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct =
  maximum . palindromes . multiplesOfFactorsWithNumDigits

palindromes :: [Int] -> [Int]
palindromes xs = let
  isPalindrome x = (read . reverse . show $ x) == x
  in
    filter isPalindrome xs

multiplesOfFactorsWithNumDigits :: Int -> [Int]
multiplesOfFactorsWithNumDigits _ = [9009]
