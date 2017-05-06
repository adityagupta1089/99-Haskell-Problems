import           Data.List hiding (group)

combinations 0 list = [[]]
combinations n list = [ list !! i : rest | i <- [0..(length list - 1)], rest <- combinations (n-1) (drop (i+1) list) ]

group [] xs = [[]]
group szs xs = [ x:y | x <- combinations (head szs) xs, y <- group (tail szs) (xs\\x)]
