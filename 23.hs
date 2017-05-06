import           System.Random
rnd_select xs n = map (\k -> xs !! k) . take n . randomRs (0, length xs - 1) <$> getStdGen
