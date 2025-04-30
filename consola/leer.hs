module Main where

main :: IO ()
main = do
    -- Mostrar un mensaje solicitando un nombre
    putStrLn "¿Cómo te llamas?"
    
    -- Leer el nombre introducido por el usuario
    nombre <- getLine
    
    -- Responder con un mensaje
    putStrLn ("Hola, " ++ nombre ++ "!")