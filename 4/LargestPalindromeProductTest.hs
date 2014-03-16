import Test.HUnit

import LargestPalindromeProduct

tests = test
    [ "finds 9009 as the largest palindrome product of 2-digit numbers" ~: do
      9009 @=? largestPalindromeProduct 2
    , "finds [101, 111, 121] as palindromes in [100..130]" ~: do
      [101, 111, 121] @=? palindromes [100..130]
    ]


main :: IO Counts
main = runTestTT tests
