module Main where

-- Funcion que devuelve una lista con la logitud de cada sublista
longitud :: [[a]] -> [Int]
longitud [] = []
longitud (xs:xss) = contar xs : longitud xss

contar :: [a] -> Int
contar [] = 0
contar (x:xs) = 1 + contar xs

main :: IO ()
main = do
    -- Lista de lista donde voy a checkear 
    let lista = [[1,2],[], [6,4,23,9,0], [9,9,9],[1]]

    -- Llamo a la funcion longitud
    let resultado = longitud lista

    -- Imprimo el resultado
    putStrLn $ "Resultado: " ++ show resultado
    