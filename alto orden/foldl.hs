-- Definir una función que multiplica todos los elementos de una lista
multiplicar :: Int -> Int -> Int
multiplicar x y = x * y

-- Usar foldl para multiplicar todos los elementos de la lista
main :: IO ()
main = do
    let numeros = [1, 2, 3, 4, 5]
    let resultado = foldl multiplicar 1 numeros
    print resultado  -- 120
