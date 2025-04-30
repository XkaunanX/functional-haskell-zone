module Main where

-- Funcion que devuelve las sublistas cuya suma es igual a k
ocurrencias :: ([[Int]], Int) -> [[Int]]
ocurrencias ([], _) = []
ocurrencias (xs:xss, k)
    | sumar xs == k = xs : ocurrencias (xss, k)
    | otherwise     = ocurrencias (xss, k)

-- Funcion que suma todos los elementos de una lista
sumar :: [Int] -> Int
sumar [] = 0
sumar (x:xs) = x + sumar xs

main :: IO ()
main = do
    -- Defino una lista de listas de enteros
    let lista = [[1,2,3], [4,5], [3,3,3], [6,0], [2,3]]
    -- Defino el número K para el cual buscaremos sublistas que sumen a `K`
    let k = 6
    -- Llamo a la funcion
    let resultado = ocurrencias (lista, k)
    -- Imprimo
    putStrLn $ "Las sublistas cuyos elementos suman exactamente " ++ show k ++ " son: " ++ show resultado