import Data.List (groupBy)

-- Agrupar elementos iguales consecutivos en la lista
main :: IO ()
main = do
    let lista = [1, 1, 2, 3, 3, 3, 4]
    let resultado = groupBy (==) lista
    print resultado  -- [[1, 1], [2], [3, 3, 3], [4]]
