module PrimeFactors where

import qualified Data.List as List

primes :: [Int]
primes = List.nubBy (\x y -> gcd x y > 1) [2..]

primeFactors :: Int -> [Int]
primeFactors n | n > 1 = go n primes
   where
     go n ps@(p:ps')
       | p * p > n = [n]
       | n `rem` p == 0 = p : go (n `quot` p) ps
       | otherwise = go n ps'

largestPrimeFactor :: Int -> Int
largestPrimeFactor = maximum . primeFactors
