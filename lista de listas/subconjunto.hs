module Main where

-- Función que verifica si una lista es subconjunto de otra
esSubconjunto :: ([Int], [Int]) -> Bool
esSubconjunto [] _ = True
esSubconjunto (x:xs) ys
    | x `elem` ys = esSubconjunto xs ys
    | otherwise   = False

-- Función que devuelve las sublistas que son subconjuntos de la lista principal
sublistasSubconjuntos :: ([[Int]], [Int]) -> [[Int]]
sublistasSubconjuntos ([], _) = []
sublistasSubconjuntos (xs:xss, ys)
    | esSubconjunto xs ys = xs : sublistasSubconjuntos (xss, ys)
    | otherwise = sublistasSubconjuntos (xss, ys)

main :: IO ()
main = do
    -- Defino una lista de listas de enteros
    let lista = [[1, 2], [2, 3], [4, 5], [1, 2, 3]]
    -- Defino la lista principal
    let listaPrincipal = [1, 2, 3, 4, 5]
    -- Llamo a la función `sublistasSubconjuntos`
    let resultado = sublistasSubconjuntos (lista, listaPrincipal)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas que son subconjuntos de la lista principal son: " ++ show resultado
