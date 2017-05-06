rotate xs 0     = xs
rotate (x:xs) n = rotate (xs ++ [x]) (n-1)
