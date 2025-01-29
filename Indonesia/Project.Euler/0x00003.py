import Data.List (find)
import Data.Maybe (fromJust)
import Control.Monad (forever)

compute :: IO String
compute = do
    let n = 600851475143
    result <- smallestFactor n
    return (show result)

smallestPrimeFactor :: Integer -> Integer
smallestPrimeFactor n
    | n < 2     = error "n must be >= 2"
    | otherwise = fromJust $ find (\i -> n `mod` i == 0) [2..(floor . sqrt . fromIntegral $ n)]

smallestFactor :: Integer -> IO Integer
smallestFactor n = forever $ do
    let p = smallestPrimeFactor n
    if p < n
        then smallestFactor (n `div` p)
        else return n

main :: IO ()
main = compute >>= putStrLn

