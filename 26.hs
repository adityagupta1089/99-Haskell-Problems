combinations 0 list = [[]]
combinations n list = [ list !! i : rest | i <- [0..(length list - 1)], rest <- combinations (n-1) (drop (i+1) list) ]
