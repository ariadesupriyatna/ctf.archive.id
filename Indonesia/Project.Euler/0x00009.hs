module Main where

compute :: String
compute = let perimeter = 1000
               findProduct a b
                   | a < b = let c = perimeter - a - b
                             in if a * a + b * b == c * c
                                then Just (show (a * b * c))
                                else findProduct a (b + 1)
                   | otherwise = Nothing
           in head [result | a <- [1..perimeter], b <- [a+1..perimeter], 
                            let result = findProduct a b, result /= Nothing]

main :: IO ()
main = putStrLn (compute)

