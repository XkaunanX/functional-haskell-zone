module Main where

-- Función que determina si un número es par o impar
parImpar :: Int -> String
parImpar 0 = "Par"  -- 0 es par
parImpar 1 = "Impar"  -- 1 es impar
parImpar n
    | even n    = "Par"   -- Si el número es par, es "Par"
    | otherwise = "Impar"  -- Si no, es "Impar"

main :: IO ()
main = do
    putStrLn "Introduce un número:"
    input <- getLine
    let numero = read input :: Int

    -- Llamar a la función parImpar
    let resultado = parImpar numero

    -- Mostrar el resultado
    putStrLn ("El número " ++ show numero ++ " es: " ++ resultado)
