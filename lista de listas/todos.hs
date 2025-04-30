module Main where

-- Función que verifica si todos los elementos de una sublista son mayores que un número dado
todosMayorQue :: ([Int], Int) -> Bool
todosMayorQue [] _ = True
todosMayorQue (x:xs) n
    | x > n     = todosMayorQue xs n
    | otherwise = False

-- Función que devuelve las sublistas en las que todos sus elementos son mayores que `n`
sublistasMayorQue :: ([[Int]], Int) -> [[Int]]
sublistasMayorQue ([], _) = []
sublistasMayorQue (xs:xss, n)
    | todosMayorQue xs n = xs : sublistasMayorQue (xss, n)
    | otherwise = sublistasMayorQue (xss, n)

main :: IO ()
main = do
    -- Defino una lista de listas de enteros
    let lista = [[1, 2, 3], [4, 5], [6], [1, 1, 1, 1], [7, 8, 9]]
    -- Defino el número límite
    let limite = 4
    -- Llamo a la función `sublistasMayorQue` para obtener las sublistas donde todos los elementos son mayores que `limite`
    let resultado = sublistasMayorQue (lista, limite)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas cuyos elementos son todos mayores que " ++ show limite ++ " son: " ++ show resultado
