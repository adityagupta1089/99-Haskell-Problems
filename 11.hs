import           Data.List
import           Group
encodeModified list = map (\x -> if length x == 1 then Single (head x) else Multiple (length x) (head x)) $ group list
