data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem e)  = [e]
flatten (List xs) = concat flatten `map` xs
