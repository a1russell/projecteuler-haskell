import Test.HUnit

import LargestPalindromeProduct

tests = test
    [ "finds 9009 as the largest palindrome product of 2-digit numbers" ~: do
      9009 @=? largestPalindromeProduct 2
    ]


main :: IO Counts
main = runTestTT tests
