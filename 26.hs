combinations :: (Eq a) => Int -> [a] -> [[a]]
combinations 0 list = [[]]
combinations n list = [ x:y | x <- list, y <- combinations (n-1) list, x `notElem` y]
