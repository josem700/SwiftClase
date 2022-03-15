import UIKit

//8. Declarar array "palabras"
var palabras:[String] = []
//9. Guardar una palabra en cada posición del array
palabras = ["Hola", "Salchichon", "Raton", "Butifarra"]
//10. Declara una tupla llamada "alumno" para almacenar nombre, puesto(entero), ciclo y curso
var alumno:(nombre:String,puesto:Int,ciclo:String,curso:Int)
//11. y 12. Añade tu nombre y tu nº de puesto a la tupla
alumno.nombre = "Jose"
alumno.puesto = 2
//13. Asignar el curso y el ciclo
alumno.curso = 2
alumno.ciclo = "DAM"
//14. Imprime "Hola soy MiNombre, estoy en el puesto número X" utilizando los valores de la tupla
print("Hola soy \(alumno.nombre), estoy en el puesto número \(alumno.puesto)")
//15. Declara la tupla "coords" con 3 variables: x, y, z. Asignar los valores 20.0, 30.0 y 10.0, respectivamente.
let coords:(x:Double,y:Double,z:Double)
//16. Crear un array de tuplas con los datos de todos tus compañeros de clase
let alumnos:[(String,Int)] = [("Roberto",1),("Juanjo", 2),("Ismael", 75), ("Juan",3), ("Angel",5)]
//17. Imprime el nombre del alumno sentado en el puesto 3
for al in alumnos {
    if(al.1==3){
        print(al.0)
    }
}
/*(Opcionales) Programa un switch que imprima:
18. "Punto 0" cuando la coordenada sea 0,0,0
19. El eje cuya coordenada sea 0 (X, Y, o Z)
20. La palabra "Centro" cuando el valor de los 3 ejes sean iguales
*/

//21. Reemplazar el 5 por un 7 en este array: [6, 9, 3, 11, 5, 48]
var numeros:[Int] = [6, 9, 3, 11, 5, 48]

if let i = numeros.firstIndex(of: 5){
    numeros[i] = 7
}

print(numeros)
//22. En el array anterior, reemplazar los valores 9, 3 y 11 por 9, 10, 11, 13 y 7
numeros[1...3] = [9,10,11,13,7]
print(numeros)
//23. Crea un array de números enteros con un tamaño de 10 elementos llamado arn
var arn = [Int](repeating: 0, count: 11)
//24. Asigna valor a las posiciones 1, 4, 9 y 10 de arn.
arn[1] = 4
arn[4] = 5
arn[9] = 42
arn[10] = 48
//25. Imprime los valores de las posiciones 4, 1, 9 y 10 de arn
print(arn[4],arn[1],arn[9],arn[10])
print(arn)
//26. Imprime todos los elementos del array en una misma línea separados por comas o espacios. Razonar la respuesta y explica las dificultades encontradas.
//Le asignas una variable texto, y dentro conforme vas recorriendo el array de numeros lo sumas a lo que habia en texto con un espacio, la unica dificultad ha sido intentarlo de otra forma pero no me dejaba sumarlo porque uno era de tipo string y el otro int
var texto = "";
for num in arn{
    texto += "\(num) "
}

print(texto)
//27. Dado un array de números enteros con un tamaño de 5 posiciones con los siguientes valores {1,2,3,4,5}. Guardar los valores de este array en otro array pero con los valores invertidos, es decir, {5,4,3,2,1}.

var cosa = [1,2,3,4,5]
var cosa2:[Int] = cosa.reversed()

print("Array normal: \(cosa), Array invertido: \(cosa2)")

