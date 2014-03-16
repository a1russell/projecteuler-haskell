import Test.HUnit

import PrimeFactors

tests = test
    [ "finds [2, 3, 5, 7, 11] as the first 5 primes" ~: do
      [2, 3, 5, 7, 11] @=? take 5 primes
    , "finds [5, 7, 13, 29] as the prime factors of 13195" ~: do
      [5, 7, 13, 29] @=? primeFactors 13195
    , "finds 29 as the largest prime factor of 13195" ~: do
      29 @=? largestPrimeFactor 13195
    ]

main :: IO Counts
main = runTestTT tests
