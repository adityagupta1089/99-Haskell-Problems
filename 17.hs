split xs 0 = ([], xs)
split (x:xs) n = (x : st, ed) where (st, ed) = split xs (n-1)
