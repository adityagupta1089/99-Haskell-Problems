insertAt x xs n = st ++ [x] ++ ed where (st, ed) = splitAt (n-1) xs
