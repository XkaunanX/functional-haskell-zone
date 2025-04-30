module Main where

-- Definir la función que convierte un número en una lista de sus dígitos como cadenas
digitos :: Int -> [String]
digitos n = map (:[]) (show n)  -- Convierte cada dígito en un caracter de la cadena

-- Usar concatMap para aplicar la función 'digitos' a cada elemento de la lista
main :: IO ()
main = do
    let numeros = [123, 456, 789]
    let resultado = concatMap digitos numeros
    putStrLn $ "Los dígitos de los números son: " ++ show resultado
