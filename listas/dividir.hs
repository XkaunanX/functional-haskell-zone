module Main where

-- Función dividir
dividir :: [a] -> ([a], [a])
dividir [] = ([], [])
dividir [x] = ([x], [])
dividir (x:y:xs) = (x:xs1, y:xs2)
  where (xs1, xs2) = dividir xs

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let (parte1, parte2) = dividir lista
    putStrLn $ "Parte 1: " ++ show parte1
    putStrLn $ "Parte 2: " ++ show parte2
