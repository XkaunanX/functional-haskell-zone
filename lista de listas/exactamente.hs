module Main where

-- Funcion que devuelva las sublistas que contienen el caracter `c` exactamente `k` veces
exactamente :: ([[Char]], Char, Int) -> [[Char]]
exactamente ([], _, _) = []
exactamente (xs:xss, c, k)
    | contar (xs, c) == k = xs : exactamente (xss, c, k)  -- Acumula las sublistas que cumplen la condicion
    | otherwise           = exactamente (xss, c, k)

-- Funcion que cuenta la cantidad de veces que aparece un caracter en una lista
contar :: ([Char], Char) -> Int
contar ([], _) = 0
contar (x:xs, n)
    | x == n    = 1 + contar (xs, n)
    | otherwise = contar (xs, n)

main :: IO ()
main = do
    -- Defino una lista de listas de caracteres
    let lista = ["hola", "mundo", "hola mundo", "adios"]
    -- Defino el caracter a buscar y la cantidad de ocurrencias deseadas
    let caracter = 'o'
    let cantidad = 2
    -- Llamo a la funcion `ocurrencias`
    let resultado = exactamente (lista, caracter, cantidad)
    -- Imprimo el resultado
    putStrLn $ "Las sublistas con el carácter '" ++ [caracter] ++ "' exactamente " ++ show cantidad ++ " veces son: " ++ show resultado