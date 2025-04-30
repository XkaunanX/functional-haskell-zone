module Main where

-- Función que calcula el precio con descuento
calcularDescuento :: Float -> Float
calcularDescuento precio
    | precio >= 1000 = precio * 0.9  -- 10% de descuento
    | precio >= 500  = precio * 0.95 -- 5% de descuento
    | otherwise      = precio

main :: IO ()
main = do
    putStrLn "Introduce el precio: "
    input <- getLine
    let precio = read input :: Float
    putStrLn ("El precio con descuento es: " ++ show (calcularDescuento precio))
