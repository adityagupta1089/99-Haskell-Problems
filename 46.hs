and' = (&&)
or' = (||)
nor a b = not $ or' a b
xor a b = (a && not b) || (not a && b)
impl a b = not a || b
equ a b = impl a b && impl b a
table f = mapM_ print [show a ++ " " ++ show b ++ " " ++ show (f a b) | a <- [True, False], b <- [True, False]]
