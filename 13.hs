import Group
encodeDirect :: (Eq a) => [a] -> [Group a]
encodeDirect = foldr foldingFunction []
foldingFunction x [] = [Single x]
foldingFunction x all@((Single y):ys) =
  if x == y
    then (Multiple 2 x) : ys
    else (Single x) : all
foldingFunction x all@((Multiple n y):ys) =
  if x == y
    then (Multiple (n + 1) x):ys
    else (Single x) : all
