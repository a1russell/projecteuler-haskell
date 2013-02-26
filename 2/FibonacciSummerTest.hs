import Test.HUnit

import FibonacciSummer


tests = test
    [ "gets Fibonacci numbers up to 0" ~: do
      [] @=? getFibonacciNumbersUpTo 0
    , "gets Fibonacci numbers up to 1" ~: do
      [1] @=? getFibonacciNumbersUpTo 1
    , "gets Fibonacci numbers up to 2" ~: do
      [1, 2] @=? getFibonacciNumbersUpTo 2
    , "gets Fibonacci numbers up to 89" ~: do
      [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] @=? getFibonacciNumbersUpTo 89
    , "gets even Fibonacci numbers up to 89" ~: do
      [2, 8, 34] @=? getEvenFibonacciNumbersUpTo 89
    , "sums even Fibonacci numbers up to 89" ~: do
      44 @=? sumEvenFibonacciNumbersUpTo 89
    ]


main :: IO Counts
main = runTestTT tests
