-- Usar const para ignorar el segundo valor
main :: IO ()
main = do
    let resultado = const 5 "Cualquier valor"  -- Siempre devuelve 5
    print resultado  -- 5