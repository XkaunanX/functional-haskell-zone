module Main where
import Text.Read (readMaybe)

-- Declaro la función que contará la cantidad de veces que aparece un número n en una lista
contar :: ([Int], Int) -> Int
contar ([], _) = 0
contar (x:xs, n) 
    | x == n    = 1 + contar (xs, n)
    | otherwise  = contar (xs, n)

main :: IO ()
main = do
    putStrLn "Ingresa el número que se quiere contar"
    input <- getLine
    let n = read input :: Int
    putStrLn "Ingresa numeros para guardar en una lista. Escribe 'fin' para terminar."
    numeros <- ingresarNumeros []
    putStrLn $ "Los numeros ingresados son: " ++ show numeros
    let resultado = contar (numeros, n)
    putStrLn $ "Resultado: " ++ show resultado

-- Función que ingresa números de manera recursiva
ingresarNumeros :: [Int] -> IO [Int]
ingresarNumeros listaActual = do
    input <- getLine
    if input == "fin" 
        then return listaActual
        else case readMaybe input :: Maybe Int of
            Just numero -> ingresarNumeros (numero : listaActual)
            Nothing -> do
                putStrLn "Por favor, ingresa un número válido."
                ingresarNumeros listaActual
