limit = 2000000 :: Int
main = putStrLn (show ans)
ans = sum (filter isPrime [2 .. (limit - 1)])

isPrime :: Int -> Bool
isPrime n
    | n < 2     = False
    | otherwise = null [ x | x <- [2..(floor . sqrt . fromIntegral) n], n `mod` x == 0]
