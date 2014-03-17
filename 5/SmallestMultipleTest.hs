import Test.HUnit

import SmallestMultiple

tests = test
    [ "finds 2520 as the smallest multiple of all numbers 1 to 10" ~: do
      2520 @=? smallestMultiple [1..10]
    ]

main :: IO Counts
main = runTestTT tests
