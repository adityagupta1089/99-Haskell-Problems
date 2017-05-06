import           Data.List
import           System.Random
diff_select n m = take n . nub . randomRs (1, m) <$> getStdGen
