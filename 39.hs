import           Prime

primesR :: Int -> Int -> [Int]
primesR a b = filter isPrime [a..b]
