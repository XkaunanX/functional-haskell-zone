# Listas de Listas en Haskell

Las listas de listas en Haskell son estructuras de datos donde cada elemento de la lista es a su vez una lista. Estas estructuras son utiles para representar datos jerarquicos o matrices, donde las sublistas pueden tener diferentes tamaños y contener otros tipos de datos.

Ejemplo:

```haskell
-- Función para manejar el item (sumarle 1)
procesarItem :: Int -> Int
procesarItem x = x + 1

-- Función para manejar la lista (aplicar procesarItem a cada elemento)
procesarLista :: [Int] -> [Int]
procesarLista lista = map procesarItem lista

-- Función para manejar la lista de listas (aplicar procesarLista a cada sublista)
procesarListaDeListas :: [[Int]] -> [[Int]]
procesarListaDeListas listaDeListas = map procesarLista listaDeListas

-- Ejemplo de uso
main :: IO ()
main = do
  let listaDeListas = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  let resultado = procesarListaDeListas listaDeListas
  print resultado
```

## Caracteristicas de las Listas de Listas

- **Estructuras jerarquicas**: Son ideales para representar datos en forma de tablas o matrices, donde cada sublista puede representar una fila o columna.
- **Flexibilidad**: Las listas de listas permiten trabajar con colecciones de colecciones de diferentes tamaños, lo que permite modelar estructuras complejas de manera eficiente.
- **Recursividad**: Al igual que las listas, las listas de listas estan definidas recursivamente, lo que permite recorrerlas o manipularlas mediante tecnicas de recursion.

## Operaciones Principales

Las listas de listas se pueden manipular mediante diversas operaciones especializadas para manejar la anidacion de elementos. Algunas de las operaciones mas comunes son:

- **Concatenacion**: Unir multiples listas de listas en una sola lista de listas o una lista simple a partir de sublistas.
- **Acceso anidado**: Acceder a elementos dentro de sublistas de una lista de listas, mediante combinaciones de indices.
- **Mapeo**: Aplicar una funcion a cada sublista dentro de la lista de listas, modificando el contenido de cada una de ellas.
- **Reduccion**: Reducir una lista de listas a una sola lista o incluso un unico valor aplicando funciones de agregacion.

## Representacion y Notacion

Una lista de listas en Haskell se representa como una lista cuyo contenido son otras listas. Por ejemplo, una lista de listas de enteros podria ser `[[1, 2], [3, 4], [5, 6]]`, donde cada sublista contiene una coleccion de elementos.

## Patrones y Funciones Avanzadas

Al igual que las listas simples, las listas de listas pueden manipularse utilizando patrones y funciones recursivas que permiten descomponer y operar sobre la estructura interna:

- **Descomposicion de sublistas**: Se puede acceder y trabajar con cada sublista dentro de la lista general, procesando las sublistas como entidades separadas.
- **Recursion en listas anidadas**: Se pueden escribir funciones recursivas que recorran o modifiquen las listas internas, ya sea para buscar, transformar o filtrar elementos dentro de ellas.

## Aplicaciones de las Listas de Listas

- **Matrices y Tablas**: Pueden ser utilizadas para representar matrices donde cada sublista corresponde a una fila, o tablas donde cada sublista corresponde a una fila de registros.
- **Estructuras jerarquicas**: Son utiles para representar estructuras como arboles, donde cada sublista puede representar un nodo y sus hijos, o para almacenar datos jerarquicos en general.

Las listas de listas en Haskell proporcionan una poderosa manera de manejar colecciones anidadas y modelar estructuras de datos complejas con facilidad y flexibilidad.
