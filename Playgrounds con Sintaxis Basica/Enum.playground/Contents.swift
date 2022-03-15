import UIKit
import Darwin

//Los enum son como clases con valores
enum Dia {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}

var hoy = Dia.jueves



enum Golpe{
    case golpeLeve(Int)
    case golpeMedio(Int)
    case golpeFuerte(Int)
    case golpeMortal
}

class Arma{
    var tipoGolpe:Golpe?
}

//Variable arma de tipo espada
let espada = Arma()
//Se puede poner el . solo porque la variable es de tipo golpe
espada.tipoGolpe = .golpeMortal

class Personaje{
    var vida = 100
    var fuerza = 100
}

//Creamos un personaje de la clase guerrero
let Guerrero = Personaje()

//Hay que poner la exclamacion para decirle que hay valor ya que tipoGolpe es opcional
switch espada.tipoGolpe!{
    //Si el golpe es leve define la constante puntos
    case .golpeLeve(let puntos):
        Guerrero.vida -= puntos
    
    case .golpeMedio(let puntos) where puntos <= 5:
        Guerrero.vida -= puntos * 2
    
    case .golpeMedio(let puntos) where puntos > 5:
    Guerrero.vida -= puntos * 3
    
    case .golpeFuerte(let puntos):
    Guerrero.vida -= puntos * 3
    Guerrero.fuerza -= puntos
    
    case .golpeMortal:
    Guerrero.vida = 0
    print ("Salchichon pompón sa morio")
    
    default:()
        
}

Guerrero.vida
Guerrero.fuerza

//Enumeracion de tipo error
enum divisionError : Error {
    case entreCero
}


func division (op1: Float, op2: Float) throws -> Float{
    
    if(op2 == 0){
        //Le lanzo la excepcion definida en el enum anterior
        throw divisionError.entreCero
    }
    
    return op1 / op2
}

do{
    var resultado: Float
    
    try resultado = division(op1: 3, op2: 0)
        print(resultado)
    
}

catch divisionError.entreCero{
    print("No puedes dividir por cero gilipollas")
}


//Diccionarios

var spanishEnglish = [String: String]()

print(spanishEnglish.isEmpty)

//Añadir cosas al diccionario
spanishEnglish["Hola"] = "Hello"
spanishEnglish["Feo"] = "Ugly"


var numeros = [1: "Uno", 2: "Dos", 3:"Tres", 4:"Cuatro", 5: "Por el culo"]
//var numeros = [Int: String]()

print(numeros.count)

print(numeros[5]!)
print(spanishEnglish["Feo"]!)

//iniciar Diccionario vacio
var myDictionary:[Int: Double] = [:]

var myDictionary2 = Dictionary<Int, Double>()

myDictionary = [4: 4.22, 6: 8.34, 5: 2.66, 24:45.334]

//Imprimir los valores en orden
for (key,value) in myDictionary {
    print("La clave \(key) tiene el valor \(value)")
}

//Modificar valores
myDictionary[4] = 44

print(myDictionary[4]!)

//Eliminar datos

myDictionary[4] = nil

myDictionary.removeValue(forKey: 5)

for (key,value) in myDictionary {
    print("La clave \(key) tiene el valor \(value)")
}

//Se pueden definir arrays con las claves de un diccionario y/o los valores
var mykeys = Array(myDictionary.keys)
var myValues = Array(myDictionary.values)

print(mykeys)
print(myValues)

