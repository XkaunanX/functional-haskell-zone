module Main where

-- Función que ordena una lista de números en orden ascendente
ordenarLista :: [Int] -> [Int]
ordenarLista lista = bubbleSort lista
    where
        -- Función auxiliar para el ordenamiento por burbuja
        bubbleSort [] = []
        bubbleSort [x] = [x]
        bubbleSort (x:y:xs)
            | x > y     = y : bubbleSort (x:xs)
            | otherwise = x : bubbleSort (y:xs)

main :: IO ()
main = do
    let lista = [5, 3, 8, 1, 2]
    let resultado = ordenarLista lista
    putStrLn ("Lista ordenada: " ++ show resultado)
