import UIKit

//1. Calcular el número de segundos que hay en un año y almacenarlos en una variable. Imprimir la variable

let days = 365
let hours = 24
let minutes = 60
let seconds = 60

let secondsInAYear = seconds * minutes * hours * days

print ("Hay \(secondsInAYear) segundos en un año")

//2. Calcular el número total de píxeles del iPhone 7 e imprimir el resultado en una frase
let altoIPhone7 = 1334
let anchoIPhone7 = 756

let resolucion = altoIPhone7 * anchoIPhone7

print ("La pantalla del iPhone 7 tiene \(resolucion) pixeles en total")

//3. Imprimir el último dígito de este número
let num = 24378
print("La última cifra de \(num) es \(num % 10)")

//4. Calcular el precio con IVA (21%)
let precio = 10.95
 let porcentaje = precio * 21 / 100
print ("El IVA de 10,95 es \(porcentaje)")

//5. ¿Cuál es el número más grande?
let num1 = 5
let num2 = 5

if num1 > num2{
    print ("El numero \(num1) es mayor que el \(num2)")
}
else if num2 > num1 {
    print ("El numero \(num2) es mayor que el \(num1)")
}
else{
    print("Los numeros son iguales")
}

//6. (Opcional) Desarrollar un programa que imprima todos los años bisiestos comprendidos entre estas dos fechas (ambas incluidas)
let anno1 = 1800
let anno2 = 2020

var str = ""

for i in anno1...anno2{
    
    if i % 4 == 0 && i % 100 != 0 || i % 400 == 0 {
        str = ("\(str), \(i)")
    }
}
 print("Los años \(str) son bisiestos")

//7. (Opcional) Crear un programa que imprima el número de ocurrencias de "o" en las siguientes palabras
let palabra1 = "cocodrilo"
let palabra2 = "lagarto"

var contador = 0
for char in palabra1 {
    if(char == "o"){
        contador += 1
    }
}
print("La palabra \(palabra1) tiene la letra 'o' \(contador) veces")

contador = 0
for char in palabra2 {
    if(char == "o"){
        contador += 1
    }
}
print("La palabra \(palabra2) tiene la letra 'o' \(contador) veces")

//8. (Opcional) Imprimir las palabras de esta frase que contengan la letra "r", cada una en una línea
let frase = "El perro del roque no tiene rabo porque Ramón Ramírez se lo ha cortado."

let palabra = frase.components(separatedBy: " ")

for pal in palabra where pal.contains("r") || pal.contains("R"){
    
        print(pal)
}


