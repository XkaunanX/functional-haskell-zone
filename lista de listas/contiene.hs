module Main where

-- Función que devuelve las sublistas que contienen un elemento específico
contieneElemento :: ([[a]], a) -> [[a]]
contieneElemento ([], _) = []
contieneElemento (xs:xss, y)
    | y `elem` xs = xs : contieneElemento (xss, y)  -- Si el elemento está en la sublista, la incluye en el resultado
    | otherwise   = contieneElemento (xss, y)

main :: IO ()
main = do
    -- Defino una lista de listas de caracteres
    let lista = ["hola", "mundo", "hola mundo", "adios", "Haskell"]
    -- Defino el elemento que quiero buscar
    let elemento = 'o'
    -- Llamo a la función `contieneElemento` para obtener las sublistas que contienen el elemento
    let resultado = contieneElemento (lista, elemento)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas que contienen el elemento '" ++ [elemento] ++ "' son: " ++ show resultado
