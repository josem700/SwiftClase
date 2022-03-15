import UIKit

func add42(_ numero: Int) -> Int {
    return numero+42;
}

add42(3)


let add42Closure = {(numero:Int) -> Int in
    return numero + 42;
}

add42Closure(3)

//(Int) -> Int
//(String) -> void
//(Int, Int) -> Double
//() -> Srting


//Closures como parametro de entrada

func add10 (_ numero: Int) -> Int{
    return numero + 10
}

let add10closure = {(numero: Int)-> Int in
    return numero + 10
}

func apply (_ funcion: (Int) -> Int, con numero: Int) -> Int {
    return funcion(numero)
}


apply(add42Closure, con: 3)
apply(add42Closure, con: 17)
apply(add10closure, con: 10)


//Closures como tipo de retorno de una funcion

func adder(numero :Int) -> (Int) -> Int {
    
    func add(x: Int) -> Int {
        return x + numero
    }
    return add
}


let add42new = adder(numero: 42)

let listaDeFunciones: [(Int) -> Int] = [add42Closure,add10closure,add42new]

for funcion in listaDeFunciones {
    print(funcion(3))
}

let funcionesList = [
    add42Closure, //Closure (Int) -> Int
    {(numero: Int) -> Int in return numero + 42}, //Sintaxis explícita
    {(numero: Int) in return numero + 42}, //Omitimos el retorno
    {numero in return numero + 42}, //Omitimos el tipo de entrada
    {numero in numero + 42}
]

for funcion in funcionesList {
    print(funcion(3))
}

var sumar: (Int, Int) -> Int = {op1, op2 in return op1 + op2}

sumar(4,2)

var numeros = [3,6,3,7,8]



//Utilizando el metodo filter obtener todos los nombres de personas que se encuentran en el array y comienzan por A



let nombres = ["Ana", "Juan", "Pepe", "Anastasio", "Ángel"]

var nombresConA = [String]()

//El $0 hace referencia a un parametro sin nombre
nombresConA  = nombres.filter{ $0.first == "A" || $0.first == "Á" || $0.first == "a" || $0.first == "á"}

print ("Los siguientes nombres comienzan por A: \(nombresConA )")
