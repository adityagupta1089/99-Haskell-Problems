module Prime where

import Data.List

isPrime :: Int -> Bool
isPrime 2 = True
isPrime n
    | n `mod` 2 == 0 = False
    | otherwise = not . any ((==0) . div n) $ takeWhile ((<=n) . (^2)) [3, 5..]

primeFactors :: Int -> [Int]
primeFactors n =
    case find (\x
        -> isPrime x && n `mod` x == 0
        )
        [2 .. ceiling . sqrt . fromIntegral $ n]
    of
    (Just num) -> num : primeFactors (n `div` num)
    Nothing    -> [n]

prime_factors_mult :: Int -> [(Int, Int)]
prime_factors_mult n = map (\xs -> (head xs, length xs)) $ group (primeFactors n)
