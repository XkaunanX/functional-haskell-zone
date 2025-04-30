module Main where

-- Función que verifica si un carácter es una vocal
esVocal :: Char -> Bool
esVocal c = c `elem` "aeiouAEIOU"

main :: IO ()
main = do
    putStrLn "Funcion esVocal(c):= True si es una vocal"
    
    -- Pedir un carácter al usuario
    putStrLn "Introduce una letra: "
    input <- getLine
    let letra = head input
    
    -- Aplicar la funcion esVocal
    let resultado = esVocal letra

    -- Mostrar el resultado
    putStrLn ("La letra " ++ [letra] ++ " es vocal: " ++ show resultado)
