import UIKit

//1. Declara el String nombre y el entero puesto

var nombre:String
var puesto:Int

//2. Asigna valores a puesto y nombre

nombre = "Jose"
puesto = 1
//3. Imprime "Hola soy MiNombre, estoy en el puesto número X" utilizando los valores de las variables anteriores

print("Hola soy \(nombre), estoy en el puesto número \(puesto)")

//4. Imprime el número de caracteres de la frase anterior

var frase = "Hola soy \(nombre), estoy en el puesto número \(puesto)"
var cont = 0
for _ in frase{
    cont += 1
}
print("La frase '\(frase)' tiene \(cont) caracteres")

//5. Imprime la primera letra

var firstChar = frase[frase.startIndex]
print ("La primera letra es ",firstChar)

//6. Imprime la primera letra de otra forma

let principio = frase.index(frase.startIndex, offsetBy: 0)
let fin = frase.index(frase.startIndex, offsetBy: 1)

let caracter = principio..<fin

print("La primera letra es",frase[caracter])

//7. ¿Contiene la letra a?

if frase.contains("a"){
    print("La frase contiene la letra A")
}
else{
    print("La frase no contiene la letra A")
}

//8. Crea un substring con el nombre e imprímelo

var ini = frase.index(frase.startIndex,offsetBy: 9)
var end = frase.index(frase.startIndex,offsetBy: 12)

var rango = ini...end

print(frase[rango])

//9. Crea un substring con "puesto número X" e imprímelo
let mySubstring = frase.suffix(15)

print(mySubstring)
