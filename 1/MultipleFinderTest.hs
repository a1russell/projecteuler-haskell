import Test.HUnit

import MultipleFinder

tests = test
    [ "finds multiples of 3 and 5 below 10" ~: do
        [3, 5, 6, 9] @=? findMultiplesOf3And5Below 10
    , "sums multiples of 3 and 5 below 10" ~: do
        23 @=? sumMultiplesOf3And5Below 10
    ]

main :: IO Counts
main = runTestTT tests
