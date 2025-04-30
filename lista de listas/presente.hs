module Main where

-- Función que verifica si una sublista está presente en una lista de listas
sublistaPresente :: ([[Int]], [Int]) -> Bool
sublistaPresente ([], _) = False
sublistaPresente (x:xs, sub) = x == sub || sublistaPresente (xs, sub)

main :: IO ()
main = do
    -- Defino una lista de listas de enteros
    let lista = [[1, 2, 3], [4, 5], [6], [7, 8]]
    -- Defino la sublista que quiero buscar
    let sublista = [4, 5]
    -- Llamo a la función `sublistaPresente` para verificar si la sublista está en la lista
    let resultado = sublistaPresente (lista, sublista)
    -- Imprimo el resultado
    putStrLn $ "¿La sublista " ++ show sublista ++ " está presente? " ++ show resultado
