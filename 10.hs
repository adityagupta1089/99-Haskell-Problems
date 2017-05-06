import           Data.List
encode :: (Eq a) => [a] -> [(Int, a)]
encode list = map (\x -> (length x, head x)) $ group list
