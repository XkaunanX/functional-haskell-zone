module Main where

-- Función esOrdenada
esOrdenada :: Ord a => [a] -> Bool
esOrdenada [] = True
esOrdenada [x] = True
esOrdenada (x:y:xs)
    | x <= y    = esOrdenada (y:xs)
    | otherwise = False

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let resultado = esOrdenada lista
    putStrLn $ "La lista está ordenada: " ++ show resultado
