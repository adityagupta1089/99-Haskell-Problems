import           System.Random
rnd_select xs n = do
  gen <- getStdGen
  return $ map (\k -> xs !! k) $ take n $ randomRs (0, length xs - 1:r) gen
