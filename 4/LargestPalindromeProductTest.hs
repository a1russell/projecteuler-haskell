import Test.HUnit

import qualified Data.Set as Set

import LargestPalindromeProduct

tests = test
    [ "finds 9009 as the largest palindrome product of 2-digit numbers" ~: do
      9009 @=? largestPalindromeProduct 2
    , "finds [101, 111, 121] as palindromes in [100..130]" ~: do
      Set.fromList [101, 111, 121] @=? (palindromes . Set.fromList $ [100..130])
    , "finds 36 multiples of one-digit factors" ~: do
      36 @=? (Set.size . multiplesOfFactorsWithNumDigits $ 1)
    , "includes 81 as multiple of one-digit factors" ~: do
      True @=? Set.member 81 (multiplesOfFactorsWithNumDigits 1)
    , "does not include 11 as multiple of one-digit factors" ~: do
      False @=? Set.member 11 (multiplesOfFactorsWithNumDigits 1)
    ]

main :: IO Counts
main = runTestTT tests
