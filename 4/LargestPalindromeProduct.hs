module LargestPalindromeProduct where

import qualified Data.Set as Set

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct =
  Set.findMax . palindromes . multiplesOfFactorsWithNumDigits

palindromes :: Set.Set Int -> Set.Set Int
palindromes xs = let
  isPalindrome x = (read . reverse . show $ x) == x
  in
    Set.filter isPalindrome xs

multiplesOfFactorsWithNumDigits :: Int -> Set.Set Int
multiplesOfFactorsWithNumDigits numDigits = Set.fromList $
  let
    lowestFactor = 10 ^ (numDigits - 1)
    highestFactor = 10 ^ numDigits - 1
  in do
    x <- [lowestFactor..highestFactor]
    y <- [lowestFactor..x]
    return $ x * y
