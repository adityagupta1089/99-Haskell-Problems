pack :: (Eq a) => [a] -> [[a]]
pack list = foldr foldingFunction [[last list]] list
foldingFunction x acc =  if head (head acc) == x
  then (x : head acc) : tail acc
  else [x] : acc
