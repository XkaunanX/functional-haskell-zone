module Main where

-- Función intercambiar
intercambiar :: Int -> Int -> [a] -> [a]
intercambiar _ _ [] = []
intercambiar i j (x:xs)
    | i == 0 = (xs !! j) : take j xs ++ [x] ++ drop (j + 1) xs
    | otherwise = x : intercambiar (i - 1) (j - 1) xs

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let resultado = intercambiar 1 3 lista
    putStrLn $ "Lista con elementos intercambiados: " ++ show resultado
