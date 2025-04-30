module Main where

-- Función sacarUltimo
sacarUltimo :: [a] -> [a]
sacarUltimo [] = []
sacarUltimo [x] = []
sacarUltimo (x:xs) = x : sacarUltimo xs

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let resultado = sacarUltimo lista
    putStrLn $ "Lista sin el último elemento: " ++ show resultado
