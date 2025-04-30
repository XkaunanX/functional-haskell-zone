module Main where

-- Función filtrarPositivos
filtrarPositivos :: [Int] -> [Int]
filtrarPositivos [] = []
filtrarPositivos (x:xs)
    | x > 0     = x : filtrarPositivos xs
    | otherwise = filtrarPositivos xs

main :: IO ()
main = do
    let lista = [-1, 2, -3, 4, 5, -6]
    let resultado = filtrarPositivos lista
    putStrLn $ "Lista de números positivos: " ++ show resultado
