module Main where

-- Función que devuelve las sublistas cuya longitud es mayor que un número dado
mayoresQue :: ([[a]], Int) -> [[a]]
mayoresQue ([], _) = []
mayoresQue (xs:xss, n)
    | length xs > n = xs : mayoresQue (xss, n)  -- Acumula las sublistas con longitud mayor que n
    | otherwise     = mayoresQue (xss, n)

main :: IO ()
main = do
    -- Defino una lista de listas de cualquier tipo (puede ser String o cualquier tipo de datos)
    let lista = ["hola", "mundo", "hola mundo", "adios", "Haskell", "a"]
    -- Defino el número límite
    let longitudLimite = 4
    -- Llamo a la función `mayoresQue` para obtener las sublistas con longitud mayor que `longitudLimite`
    let resultado = mayoresQue (lista, longitudLimite)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas con longitud mayor que " ++ show longitudLimite ++ " son: " ++ show resultado
