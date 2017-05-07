phi 1 = 1
phi n = length $ filter ((== 1) . gcd n) [1 .. (n - 1)]
