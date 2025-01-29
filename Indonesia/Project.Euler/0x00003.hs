main :: IO ()
main = putStrLn (show ans)

ans :: Integer
ans = largestPrimeFactor (600851475143 :: Integer)

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n =
    let p = smallestPrimeFactor n
    in if p == n then p
       else largestPrimeFactor (n `div` p)

smallestPrimeFactor :: Integer -> Integer
smallestPrimeFactor n = head [k | k <- [2..n], n `mod` k == 0]
