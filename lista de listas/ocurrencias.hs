module Main where

ocurrencias :: ([[Int]], Int) -> [Int]
ocurrencias ([], _) = [] -- Caso base sin uso de 'k'
ocurrencias (xs:xss, k) = contar xs k : ocurrencias (xss, k)

contar :: [Int] -> Int -> Int
contar [] k = 0
contar (x:xs) k
    | x == k    = 1 + contar xs k
    | otherwise = contar xs k

main :: IO ()
main = do
    let lista = [[268], [38228], [735], [48], [823858]]
    let numero = 8
    let resultado = ocurrencias (lista, numero)
    putStrLn $ "Valor: " ++ show resultado