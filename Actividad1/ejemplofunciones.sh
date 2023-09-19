#!/bin/bash
## Funciones
# Antes que nada hay que definir las funciones, si no daría error
# Las funciones toman los parámetros con $numero, como el script
# Variable
RESULTADO=0
# Una función que muestra valores por pantalla
muestrapantalla () {
echo "Valores: $0> $1 y $2 y $3"
}
# Puede usarse return pero solo para devolver números
sumame () {
echo "Estamos en la función: ${FUNCNAME}"
echo "Parametros: $1 y $2"
RESULTADO=`expr ${1} + ${2}`
return 0
}
# Es posible la función recursiva
boom () {
echo "No ejecutes esto... "
boom
}
# La llamada se puede hacer así, sin paréntesis
muestrapantalla 3 4 "epa"
# Llamamos a la función y si devuelve 0 es correcto.
sumame 45 67 && echo "OK" || echo "Ocurrió un error"
echo "Resultado: ${RESULTADO} $!"

