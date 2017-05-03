slice xs a b = fst . splitAt (b-a+1) . snd $ splitAt (a-1) xs
