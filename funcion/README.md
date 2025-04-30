# Estructura de una Funcion en Haskell

En Haskell, una funcion es una entidad fundamental y su definicion sigue una sintaxis muy clara y concisa. Las funciones son valores de primera clase, lo que significa que pueden ser asignadas a variables, pasadas como parametros o devueltas como resultados de otras funciones.

## Sintaxis Basica

La estructura de una funcion en Haskell consta de tres partes principales:

1. **Firma de la funcion**: La firma de la funcion define el tipo de datos de los parametros que recibe la funcion, asi como el tipo de dato que devuelve. Se especifica antes de la definicion de la funcion.

2. **Tipos de funciones**: En Haskell, las funciones se definen generalmente mediante diferentes tipos de estructuras que determinan su comportamiento dependiendo de los valores de entrada. Estos tipos de funciones pueden clasificarse en varias categorías como funciones simples, funciones recursivas, funciones con guardas y funciones locales.

3. **Cuerpo de la funcion**: El cuerpo de la funcion es donde se define la logica que debe ejecutarse. Cada tipo de funcion tiene su propia estructura de cuerpo, dependiendo de su forma de definicion.

```Haskell
-- Firma de la funcion
suma :: Int -> Int -> Int

-- Cuerpo de la funcion
suma x y = x + y
```

## Componentes Detallados

### Firma de la Funcion

La firma de la funcion indica el tipo de los parametros de entrada y el tipo de salida. En Haskell, los tipos se definen con una notacion de flecha (`->`), donde el tipo de entrada se coloca antes de la flecha y el tipo de salida despues de ella. La firma permite conocer el tipo de datos con el que se estara trabajando y facilita la comprension de la funcion sin necesidad de ver su implementacion.

### Tipos de Funciones en Haskell

#### Funciones Simples

Las **funciones simples** son aquellas que se definen con una sola ecuacion, sin condiciones ni patrones complejos. Estas funciones son directas y no dependen de ninguna forma especial de entrada. Su definicion es generalmente simple y clara, operando sobre los parametros directamente.

```Haskell
-- Firma de la funcion
suma :: Int -> Int -> Int

-- Cuerpo de la funcion
suma x y = x + y
```

#### Funciones Recursivas

Las **funciones recursivas** son funciones que se llaman a si mismas durante su ejecucion. Este tipo de funcion es comun en Haskell debido a su fuerte enfoque en la recursividad en lugar de la iteracion. Las funciones recursivas son utiles cuando se trata de estructuras de datos como listas o arboles, ya que permiten dividir un problema en subproblemas mas pequenos de forma eficiente.

```Haskell
-- Firma de la funcion
longitud :: [a] -> Int

-- Cuerpo de la funcion (recursiva)
longitud [] = 0
longitud (_:xs) = 1 + longitud xs
```

#### Funciones con Guardas

Las **funciones con guardas** utilizan condiciones adicionales (guardas) para determinar el comportamiento de la funcion. Estas condiciones se escriben con el simbolo `|` y evaluan expresiones booleanas que controlan el flujo de la funcion. Las guardas permiten definir casos diferentes dentro de la misma funcion, especificando lo que debe ocurrir bajo ciertas condiciones. Son similares a los "if" de otros lenguajes, pero con una sintaxis mas limpia y declarativa.

```Haskell
-- Firma de la funcion
mayorQue10 :: Int -> String

-- Cuerpo de la funcion con guardas
mayorQue10 x
    | x > 10 = "Mayor que 10"
    | x == 10 = "Es igual a 10"
    | otherwise = "Menor que 10"
```

#### Funciones Locales

Las **funciones locales** son funciones que se definen dentro de otra funcion. Esto permite que una funcion utilice otra funcion sin necesidad de hacerla global. Las funciones locales son utiles cuando se necesita realizar una operacion auxiliar que solo tiene sentido dentro del contexto de la funcion principal. Se definen usando la palabra clave `where` y se colocan al final de la definicion de la funcion principal.

```Haskell
-- Firma de la funcion
producto :: Int -> Int -> Int

-- Cuerpo de la funcion con una funcion local
producto x y = resultado
    where
        resultado = x * y
```

### Cuerpo de la Funcion

El cuerpo de la funcion es donde se especifica la logica para procesar los parametros. Este cuerpo puede incluir recursividad, guardas, patrones, y operaciones sobre los datos. Cada tipo de funcion tiene un cuerpo distinto dependiendo de su forma de definicion. Las funciones simples tienen un cuerpo directo, las funciones recursivas incluyen llamadas a si mismas, las funciones con guardas incluyen condiciones adicionales para controlar el flujo y las funciones locales contienen definiciones de otras funciones dentro de ellas.

## Caracteristicas Adicionales de las Funciones en Haskell

- **Funciones Puras**: Las funciones en Haskell son puras, lo que significa que no tienen efectos secundarios. Dado un conjunto de parametros, siempre devuelven el mismo resultado.
- **Evaluacion Perezosa**: Haskell usa evaluacion perezosa, lo que significa que las expresiones no se evaluan hasta que no sean necesarias. Esto permite crear funciones que operan sobre estructuras de datos infinitas.
- **Polimorfismo**: Las funciones en Haskell pueden ser polimorficas, lo que significa que pueden operar sobre diferentes tipos de datos. Esto se logra mediante el uso de tipos genericos.
- **Curried Functions**: Las funciones en Haskell son curried, lo que significa que una funcion que toma varios parametros puede ser aplicada parcialmente. Esto facilita la composicion de funciones y el uso de funciones de orden superior.
