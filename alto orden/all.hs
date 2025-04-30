-- Verificar si algún número en la lista es negativo
main :: IO ()
main = do
    let numeros = [1, 2, -3, 4, 5]
    let resultadoAll = all (> 0) numeros
    print resultadoAll  -- False (porque no todos son mayores que 0)
