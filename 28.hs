import           Data.Function
import           Data.List
lsort :: (Ord a) => [[a]] -> [[a]]
lsort = sortBy (compare `on` length)
lfsort :: (Ord a) => [[a]] -> [[a]]
lfsort xs = sortBy (compare `on` length . (\x -> findIndices (\y -> length y == length x) xs)) xs
