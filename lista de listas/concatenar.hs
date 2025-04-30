module Main where

-- Función que concatena todas las sublistas de una lista de listas
concatenarSublistas :: [[a]] -> [a]
concatenarSublistas [] = []
concatenarSublistas (xs:xss) = xs ++ concatenarSublistas xss  -- Concatena la primera sublista y las demás

main :: IO ()
main = do
    -- Defino una lista de listas de caracteres
    let lista = ["hola", "mundo", "Haskell", "es", "genial"]
    -- Llamo a la función `concatenarSublistas` para obtener la lista concatenada
    let resultado = concatenarSublistas lista
    -- Imprimo el resultado
    putStrLn $ "La lista concatenada es: " ++ show resultado
