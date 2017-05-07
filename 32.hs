myGCD a b = if b == 0 then a else myGCD b (a `mod` b) 
