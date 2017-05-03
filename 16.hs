dropEvery list n = if length list < n
  then list
  else (init st) ++ (dropEvery ed n) 
    where (st, ed) = splitAt n list
