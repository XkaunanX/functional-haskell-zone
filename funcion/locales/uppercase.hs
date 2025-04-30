module Main where

-- Función principal que convierte la cadena a mayúsculas
convertirMayusculas :: String -> String
convertirMayusculas cadena = map convertir cadena
    where
        -- Función auxiliar para convertir un carácter en mayúscula
        convertir c
            | c >= 'a' && c <= 'z' = toEnum (fromEnum c - 32) :: Char
            | otherwise = c

main :: IO ()
main = do
    putStrLn "Introduce una cadena: "
    input <- getLine
    let resultado = convertirMayusculas input
    putStrLn ("La cadena en mayúsculas es: " ++ resultado)
