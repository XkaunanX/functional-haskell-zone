module Main where

-- Función principal que calcula el área
areaTriangulo :: Float -> Float -> Float
areaTriangulo base altura = (base * altura) / 2
    where
        -- No es necesario definir una función auxiliar explícita, pero podría añadirse para un cálculo extra
        -- Por ejemplo, si necesitáramos calcular la mitad de un valor
        mitad x = x / 2

main :: IO ()
main = do
    putStrLn "Introduce la base del triángulo: "
    baseInput <- getLine
    putStrLn "Introduce la altura del triángulo: "
    alturaInput <- getLine
    
    let base = read baseInput :: Float
    let altura = read alturaInput :: Float
    
    let resultado = areaTriangulo base altura
    putStrLn ("El área del triángulo es: " ++ show resultado)
