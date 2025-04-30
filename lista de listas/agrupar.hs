module Main where

-- Función que agrupa sublistas con el mismo número de elementos
agruparPorLongitud :: ([[a]], [[a]]) -> ([[a]], [[a]])
agruparPorLongitud ([], y) = ([], y)
agruparPorLongitud (x:xs, y)
    | length x == longitud = agruparPorLongitud (xs, (x:y))
    | otherwise            = agruparPorLongitud (xs, y)
  where longitud = length x

main :: IO ()
main = do
    -- Defino una lista de listas de enteros
    let lista = [[1, 2], [3, 4], [5], [6, 7, 8], [9, 10]]
    -- Llamo a la función `agruparPorLongitud`
    let resultado = agruparPorLongitud (lista, [])
    -- Imprimo el resultado
    putStrLn $ "Las sublistas agrupadas por longitud son: " ++ show resultado
