import           Group
decodeModified :: [Group a] -> [a]
decodeModified list = concat $ map mapf list
mapf (Single x)     = [x]
mapf (Multiple n x) = replicate n x
