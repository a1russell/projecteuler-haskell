import Test.HUnit

import TenThousandFirstPrime

tests = test
    [ "finds [2, 3, 5, 7, 11] as the first 5 primes" ~: do
      [2, 3, 5, 7, 11] @=? take 5 primes
    , "finds 13 as the 6th prime" ~: do
      13 @=? nthPrime 6
    ]

main :: IO Counts
main = runTestTT tests
