import qualified Data.List as List
import qualified Data.Numbers.Primes as Primes

compute :: IO String
compute = return $ show $ List.genericIndex (filter Primes.isPrime [2..]) 9999

main :: IO ()
main = compute >>= putStrLn

