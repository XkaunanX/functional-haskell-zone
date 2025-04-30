module Main where
import Text.Read (readMaybe)

-- Declaracion de funcio que devuelve el cuadrado de la lista pero de forma inversa
cuadrado :: [Int] -> [Int]
cuadrado [] = []
cuadrado (x:xs) = (x^2) : cuadrado xs

main :: IO ()
main = do
    -- Pido valores al usuario
    putStrLn "Ingresa números para guardar en una lista. Escribe 'fin' para terminar."
    -- Concatenacion de los valores
    numeros <- ingresarNumeros []
    putStrLn $ "Los números ingresados son: " ++ show numeros
    -- Llamo a la funcion cuadrado
    let resultado = cuadrado numeros
    -- Imprimo el resultado
    putStrLn $ "Resultado: " ++ show resultado


-- Función que ingresa números de manera recursiva
ingresarNumeros :: [Int] -> IO [Int]
ingresarNumeros listaActual = do
    -- Tomo la entrada
    input <- getLine
    -- Usuario ingreso "fin"
    if input == "fin" 
        then return listaActual
        -- Caso contrario
        else case readMaybe input :: Maybe Int of
            Just numero -> ingresarNumeros (numero : listaActual)
            Nothing -> do
                putStrLn "Por favor, ingresa un número válido."
                -- Error, Devuelvo la lista hasta el momento
                ingresarNumeros listaActual