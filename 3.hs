elementAt (x:xs) k
  | k==1 = x
  | otherwise = elementAt xs (k-1)
