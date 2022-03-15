import UIKit

//Lo de la flechita es el dato que devuelve, si no pones nada, es void
func suma (op1: Int, op2:Int) -> Int{
    return op1+op2;
}

print("La suma es: ",suma(op1: 3, op2: 2))

//ops = operandos, es el nobre de la variable, con los tres puntos puedes meter una sucesion de datos del tiron
func suma(ops: Int...) -> Int{
    var total =  0
    //la variable ops se puede iterar ya que es una sucesion de datos
    for op in ops {
        total += op
    }
    return total
}

let sumatorio = suma(ops: 3,4,6,4,5,4)


//Esta funcion devuelve una tupla con dos numeros
//Si se pone _ delante del parametro dice que es opcional nombrarlo, si lo quitas hay que llamar a la funcion con le nombre de la variable
func partir (_ num: Int)->(Int, Int){
        let mitad1 = num/2
        let mitad2 = num - mitad1
    
    return (mitad1,mitad2)
}
//esta en concreto
let mitades = partir(11)

print("Las mitades son \(mitades.0) y \(mitades.1)")

func dioHola (){
    print("Hola!!")
}

dioHola()

//Para decirle que el parametro es un array va el tipo con corchetes si defines algo con un igual en la declaracion de la funcion , quiere decir que ese es el valor por defecto
func unirCadenas (cadenas: [String], _ separador: Character = " ") -> String{
    
    var union:String = ""
    for cadena in cadenas{
        union += cadena
        union += String(separador)
    }
    return union
}



let cadena1 = unirCadenas(cadenas: ["Hola","Mundo","Juapo"], "-")
print(cadena1)

let cadena2 = unirCadenas(cadenas: ["Marcianino","Culiao","Rodolfresio"])

struct Rectangulo {
    //Valor por defecto
    var ancho = 0.0
    var alto = 0.0
    
    //Inicializador es básicamente un constructor
    init(lado:Double){
        ancho = lado
        alto = lado
    }
    
    func area() -> Double{
        return alto * ancho
    }
}


let unRectangulo = Rectangulo(lado: 3.4)

//Se puede llamar como si fuera el objeto de una clase
let area = unRectangulo.area()

