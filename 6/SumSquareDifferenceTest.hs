import Test.HUnit

import SumSquareDifference

tests = test
  [ "finds 385 as the sum of the squares of numbers 1 to 10" ~: do
    385 @=? sumSquares [1..10]
  , "finds 3025 as the square of the sum of numbers 1 to 10" ~: do
    3025 @=? squareSum [1..10]
  , "finds 2640 as the sum square difference of numbers 1 to 10" ~: do
    2640 @=? sumSquareDifference [1..10]
  ]

main :: IO Counts
main = runTestTT tests
