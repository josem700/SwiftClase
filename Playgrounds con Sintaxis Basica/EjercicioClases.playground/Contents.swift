import UIKit

//1. Crear una clase llamada SimpleCar con 3 variables:
/*2. marca, en formato de texto. No se podrá cambiar
modelo, en formato de texto. No se podrá cambiar
nBas, número de bastidor. No se podrá cambiar */
//3. Función init
class SimpleCar {
    
    let marca:String
    let modelo:String
    let nBas:Int
    
    init(marca:String, modelo:String, nBas:Int){
        self.marca = marca
        self.modelo = modelo
        self.nBas = nBas
    }
    
    func pitar(){
        print("PIIIIIIIIIIIIIIIIi")
    }
    
}

//4. Crear una clase Coche que herede de SimpleCar
//5. Esta clase debe tener:
// anno de lanzamiento, entero, sólo lectura
// color, texto, se puede cambiar el color
//6. (opcional) mediante una enumeración, que el coche sólo pueda ser blanco, negro, rojo, amarillo o azul.
//7. Sobreescribir el init de la clase padre para añadir color y año

enum Color{
    
    case blanco
    case negro
    case rojo
    case amarillo
    case azul
    
}

class Coche:SimpleCar {
    private let anioLanzamiento:Int
    var color:Color
    
    init(marca: String, modelo: String, nBas: Int, color:Color, anioLanzamiento:Int) {
        self.anioLanzamiento = anioLanzamiento
        self.color = color
        super.init(marca: marca, modelo: modelo, nBas: nBas)
    }
    
    func getanio() -> Int{
        return anioLanzamiento
    }
    
    override func pitar() {
        print("PAPOPEPAPO")
    }
    
}
//8. Crear un Renault Megane, del año 2009, blanco

let renol = Coche(marca: "Renault", modelo: "Megane", nBas: 837499928374, color: Color.blanco, anioLanzamiento: 2009)

print("El coche es un \(renol.marca) \(renol.modelo) color \(renol.color) con el numero de bastidor '\(renol.nBas)' del año \(renol.getanio())")

//9. Pintar el coche de color negro

renol.color = Color.negro

print("El nuevo color es: \(renol.color)")

//10. Crear la función pitar para que el coche imprima en consola el sonido del claxon. Hacer que pite el coche.


//11. (opcional) Declarar la función pitar en la clase SimpleCar y sobreescribirla en Coche

renol.pitar()

//12. Crear la clase Policía, que hereda de Coche


class Policia:Coche{

    
    override init(marca: String, modelo: String, nBas: Int, color:Color, anioLanzamiento: Int) {
        
        if (color == Color.blanco || color == Color.azul){
            super.init(marca: marca, modelo: modelo, nBas: nBas, color: color, anioLanzamiento: anioLanzamiento)
        }
        else{
            super.init(marca: marca, modelo: modelo, nBas: nBas, color: Color.blanco, anioLanzamiento: anioLanzamiento)
            print("El coche de Policia solo puede ser blaco o azul, creado Blanco por defecto")
        }
    }
    
    func sirena (){
        print("NINONINONINONINO")
    }
    
}



var police = Policia(marca: "Toyota", modelo: "Chaser", nBas: 383749283938, color: Color.blanco, anioLanzamiento: 1992)

police.sirena()


//13. (opcional) El coche de policía sólo puede ser blanco o azul

//14. (opcional) Implementar la función sirena, que imprime el sonido en consola.

//15. (opcional) Hacer sonar la sirena.
