import Control.Applicative

infixl 6 `and'`
and' = (&&)

infixl 4 `or'`
or' = (||)

infixl 7 `equ'`
equ' a b = (not a || b) && (b || (not a))

tablen n f = mapM_ (print . show' f) (vals n)

vals 1 = [[True], [False]]
vals n = liftA2 (:) [True, False] (vals (n-1))

show' f vals' = concatMap ((++ " ") . show) vals' ++ show (f vals')
