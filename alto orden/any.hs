-- Verificar si algún número en la lista es negativo
main :: IO ()
main = do
    let numeros = [1, 2, -3, 4, 5]
    let resultadoAny = any (< 0) numeros
    print resultadoAny  -- True (porque hay un número negativo)
