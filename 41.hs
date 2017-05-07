import           Data.List
import           Data.Maybe
import           Goldbach
import           Prime

goldbach' :: Int -> Int -> Maybe (Int, Int)
goldbach' m n = case find (\x -> isPrime (n-x)) $ filter isPrime [m..min (div n 2) (n-m)] of
    (Just x) -> Just (x, n-x)
    Nothing  -> Nothing

goldbachList a b = map goldbach $ filter ((== 0) . flip mod 2) [a..b]
goldbachList' a b m = mapMaybe (goldbach' m) $ filter ((== 0) . flip mod 2) [a..b]
