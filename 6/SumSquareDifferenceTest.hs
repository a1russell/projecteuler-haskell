import Test.HUnit

import SumSquareDifference

tests = test
  [ "finds 385 as the sum of the squares of numbers 1 to 10" ~: do
    385 @=? sumSquares [1..10]
  ]

main :: IO Counts
main = runTestTT tests
