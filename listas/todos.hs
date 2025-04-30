module Main where
import Text.Read (readMaybe)

-- Declaro una funcion que devuelve True si todos so verdaderos
todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)
    | x         = todos xs
    | otherwise = False

main :: IO ()
main = do
    putStrLn "Ingrese booleanos (True o False) para guardar en una lista. Escribe 'fin' para terminar."
    booleanos <- ingresarBooleanos []
    putStrLn $ "Los booleanos ingresados son: " ++ show booleanos
    let resultado = todos booleanos
    putStrLn $ "Resultado: " ++ show resultado  

-- Función que ingresa booleanos de manera recursiva
ingresarBooleanos :: [Bool] -> IO [Bool]
ingresarBooleanos listaActual = do
    input <- getLine
    if input == "fin" 
        then return listaActual
        else case readMaybe input :: Maybe Bool of
            Just booleano -> ingresarBooleanos (booleano : listaActual)
            Nothing -> do
                putStrLn "Por favor, ingresa 'True' o 'False'."
                ingresarBooleanos listaActual
