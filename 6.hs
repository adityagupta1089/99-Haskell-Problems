isPalindrome  :: (Eq a) => [a]->Bool
isPalindrome [a] = True
isPalindrome [] = True
isPalindrome xs = head xs==last xs && isPalindrome (init (tail xs))
