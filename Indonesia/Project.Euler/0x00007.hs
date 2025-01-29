main :: IO ()
main = putStrLn (show ans)

ans :: Int
ans = primes !! 10000

primes :: [Int]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs)

