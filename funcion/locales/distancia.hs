module Main where

-- Función para calcular la distancia entre dos puntos
distancia :: (Float, Float) -> (Float, Float) -> Float
distancia (x1, y1) (x2, y2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
    where
        -- Función auxiliar para obtener el cuadrado de un número
        cuadrado x = x * x

main :: IO ()
main = do
    let punto1 = (1.0, 2.0)
    let punto2 = (4.0, 6.0)
    let resultado = distancia punto1 punto2
    putStrLn ("La distancia entre los puntos es: " ++ show resultado)
