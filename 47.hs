infixl 3 `and'`
and' = (&&)

infixl 2 `or'`
or' = (||)

table2 f = mapM_ print [show a ++ " " ++ show b ++ " " ++ show (f a b) | a <- [True, False], b <- [True, False]]
