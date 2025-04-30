module Main where

-- Función para calcular el promedio
promedio :: [Float] -> Float
promedio lista = suma / fromIntegral (length lista)
    where
        suma = sum lista

main :: IO ()
main = do
    let numeros = [5.0, 10.0, 15.0, 20.0]
    let resultado = promedio numeros
    putStrLn ("El promedio es: " ++ show resultado)
