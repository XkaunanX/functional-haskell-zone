-- Composición de funciones
main :: IO ()
main = do
    let f = (+1)
    let g = (*2)
    let h = f . g  -- h(x) = f(g(x))
    let resultado = h 3  -- (3 * 2) + 1 = 7
    print resultado
