module Main where

-- Función concatenar
concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys
concatenar (x:xs) ys = x : concatenar xs ys

main :: IO ()
main = do
    let lista1 = [1, 2, 3]
    let lista2 = [4, 5, 6]
    let resultado = concatenar lista1 lista2
    putStrLn $ "Lista concatenada: " ++ show resultado
