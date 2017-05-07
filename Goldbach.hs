module Goldbach where

import           Data.List
import           Prime

-- even numbers > 2 should be provided
goldbach :: Int -> Maybe (Int, Int)
goldbach n = case find (\x -> isPrime (n-x)) $ filter isPrime [2..n`div`2] of
    (Just x) -> Just (x, n-x)
    Nothing  -> Nothing
