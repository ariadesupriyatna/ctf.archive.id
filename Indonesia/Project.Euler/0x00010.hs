import EulerLib (listPrimes)

compute :: IO String
compute = do
    let ans = sum (listPrimes 1999999)
    return (show ans)

main :: IO ()
main = do
    result <- compute
    putStrLn result

