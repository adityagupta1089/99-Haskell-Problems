compress :: (Eq a) => [a] -> [a]
compress list = foldr (\x acc -> if head acc == x then acc else x:acc) [last list] list
