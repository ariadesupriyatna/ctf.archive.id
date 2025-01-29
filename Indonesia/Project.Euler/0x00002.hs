module Main where

compute :: IO String
compute = do
    let ans = sumEvenFibs 0 1 0
    return (show ans)

sumEvenFibs :: Int -> Int -> Int -> Int
sumEvenFibs x y ans
    | x > 4000000 = ans
    | even x      = sumEvenFibs y (x + y) (ans + x)
    | otherwise   = sumEvenFibs y (x + y) ans

main :: IO ()
main = do
    result <- compute
    putStrLn result
