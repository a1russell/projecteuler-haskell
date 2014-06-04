module TenThousandFirstPrime where

import qualified Data.Map as Map

primes :: [Int]
primes =
  let
    sieve xs =
      let
        sieve' [] table = []
        sieve' (x:xs) table =
          let
            insertPrepending = Map.insertWith (++)
            reinsert table prime = insertPrepending (x + prime) [prime] table
            tableWithoutX = Map.delete x table
          in
            case Map.lookup x table of
              Nothing -> x : sieve' xs (Map.insert (x * x) [x] table)
              Just facts -> sieve' xs $ foldl reinsert tableWithoutX facts
      in
        sieve' xs Map.empty
  in
    sieve [2..]

nthPrime :: Int -> Int
nthPrime n = primes !! (n - 1)
