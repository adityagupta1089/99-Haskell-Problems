import           Data.List
import           System.Random
rnd_permu xs = map (\k -> xs !! k) . take (length xs) . nub . filter (< length xs) . randomRs (0, length xs) <$> getStdGen
