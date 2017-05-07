import           Prime

phi :: Int -> Int
phi 1 = 1
phi n = product [(p - 1) * p ^ (m - 1) | (p, m) <- prime_factors_mult n]
