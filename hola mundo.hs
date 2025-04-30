module Main where

sumar :: Int -> Int -> Int
sumar a b = a + b

multiplicar :: Int -> Int -> Int
multiplicar a b = a * b

doblarLista :: [Int] -> [Int]
doblarLista xs = [x * 2 | x <- xs]

filtrarPares :: [Int] -> [Int]
filtrarPares xs = [x | x <- xs, even x]

main :: IO ()
main = do
    print ("Prueba de sumar: 3 + 4 = " ++ show (sumar 3 4))
    print ("Prueba de multiplicar: 3 * 4 = " ++ show (multiplicar 3 4))
    print ("Prueba de doblar lista: [1, 2, 3] = " ++ show (doblarLista [1, 2, 3]))
    print ("Prueba de filtrar pares: [1, 2, 3, 4, 5] = " ++ show (filtrarPares [1, 2, 3, 4, 5]))
    print ("Prueba de filtrar pares: [] = " ++ show (filtrarPares []))