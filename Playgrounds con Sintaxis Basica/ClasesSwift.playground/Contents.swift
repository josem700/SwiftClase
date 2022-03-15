import UIKit

//las clases se declaran como en cualquier otro lenguaje existente
class Animal{
    
    
    let nombre:String
    var peso: Double
    
    //Inicializador, viene a ser un constructor de toda la vida
    init (nombre: String, peso: Double){
        //Self se refiere a la constante de la clase
        self.nombre = nombre
        self.peso = peso
    }
    
    
    func comer (comida: Double){
        //No hace falta poner self porque se refiere directamente al de la clase
        peso += comida
    }
    
    func ruido (){
        print("GRRRRRRRRRRRR")
    }
    
    func Stats(){
        print("El animal es \(nombre) y pesa \(peso)")
    }
    
    
}

//Instancia de la clase
var miAnimal = Animal(nombre: "Cebra", peso: 347)

//Llamar al metodo para cebar al animal y comertelo luego
miAnimal.comer(comida: 34);

miAnimal.Stats()

//Un struct lo hemos visto ya, es una clase sin init y demas mierdas varias que llevan las clases
struct valoresVitales{
    var fuerza: Int
    var vida: Int
    
}

class Enemigo{
    
    let nombre:String
    //Puedes pasarle un struct como parametro y hacer weas varias
    let vital: valoresVitales
    
    init(nombre: String, vital: valoresVitales){
        self.nombre = nombre
        self.vital = vital
    }
    
    //La palabra convenience se usa para definir un segundo constructor
    convenience init (nombre: String, fuerza:Int, vida: Int){
        let vital = valoresVitales(fuerza: fuerza, vida: vida)
        //Aqui llamo al primer constructor y le paso los valores que he recogido de este, suena lioso pero nada del otro mundo es definir un segundo constructor que se rellena en parte con los datos del primero
        self.init(nombre: nombre, vital: vital)
    }
}

//Para hacer la herencia se ponen dos puntos y la clase de la que quieres que herede, ez peasy, also se puede dejar la clase vacia y hereda porquerias varias de la primera
class Orco: Enemigo{
    var clan:String
    
    init(nombre:String, vital: valoresVitales, clan:String){
        
        self.clan = clan
        //Super para hacer referencia al init de la clase padre
        super.init(nombre: nombre, vital: vital)
    }
    
    convenience init (nombre:String, fuerza:Int, vida:Int, clan:String){
        let vitalOrco = valoresVitales(fuerza: fuerza, vida: vida)
        self.init(nombre: nombre, vital: vitalOrco, clan: clan)
    }
}

//Antes de pasarlo hay que crear la instancia del Struct
var VitalBuu = valoresVitales(fuerza: 30, vida: 100)

//Enemigo genérico
let vutano = Enemigo(nombre: "Peruano", vital: VitalBuu)

//Boss chungo fuertote
let chuerk = Orco(nombre: "Don Master Pitote", fuerza: 777, vida: 2000, clan: "Melena Gris")

//Extiende la clase, para añadirle cosas nuevas encima
extension Enemigo{
    //Las extensiones no admiten propiedades fijas, solo calculadas(Propiedades hechas a partir de otras, en este caso, la valia es igual a la fuerza por la vida)
    var valia: Int{
        return (self.vital.fuerza * self.vital.vida)
    }
}

chuerk.vital.vida
chuerk.vital.fuerza

chuerk.valia


class Perro:Animal{

    public let color: String //solo lectura
    private var numeroPatas:Int //Solo accesible mediante un Getter/Setter
    
    public var patas:Int{
        get{
            return self.numeroPatas
        }
        set(nuevoValor){
            
            if (nuevoValor <= 4 && nuevoValor >= 0){
                self.numeroPatas = nuevoValor
            }
            
            else{
                print("Muchas patas para el perro")
            }
        }
        
    }
    
    //Init vacío, constructor por defecto
    init(){
        color = "Blanco"
        numeroPatas = 4
        super.init(nombre: "perrito", peso: 1)
    }
    
    //override para sobreescribir
    override func ruido() {
        print("Pinche forro culiao")
    }
    
    func main(){
        
    }
    
}

var Firulais = Perro()

Firulais.ruido()

//Se puede preguntar si una variable/Instancia es de una clase en concreto o tipo o lo que cojones quieras comprobar
if Firulais is Perro{
    print("Es un Perro")
}

if Firulais is Animal{
    print("Es un animal")
}

var miPerro = Perro()//Se puede llamar sin valores ya que tiene un constructor por defecto
print (miPerro.color)

//miPerro.color = "Negro" Esto no se puede hacer ya que es una constante

miPerro.patas = 10

//Casting: Upcasting / Downcasting

//Upcast (Upgradear a una clase superior)
var animal:Animal = miPerro

animal.ruido()

//DownCasting sin validacion

var otroPerro:Perro
var miAnimal2 = Animal(nombre:"Animlaico", peso: 3)

otroPerro = animal as! Perro
otroPerro.color

//DownCastind con validacion
if let unPerro = animal as! Perro?{//Si animal cabe en la clase perro, hace el downcast
    
    print("Tenemos un perro \(unPerro.color)")
}
else{
    print("No es un Perro")
}

