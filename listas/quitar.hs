module Main where

-- Función quitar
quitar :: Eq a => a -> [a] -> [a]
quitar _ [] = []
quitar x (y:ys)
    | x == y    = ys
    | otherwise = y : quitar x ys

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let resultado = quitar 3 lista
    putStrLn $ "Lista sin el número 3: " ++ show resultado
