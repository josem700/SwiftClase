import UIKit

class Personaje{
    var nombre:String
    var vida:Int
    
    
    init(nombre:String, vida:Int){
        self.nombre = nombre
        self.vida = vida
    }
}


protocol Mortal{
    var muerto: Bool {get}
    func muere()
}

//En swift no hay herencia multiple, a partir de la primera coma, el resto son protocolos
class Heroe: Personaje, Mortal{
    
    //Esto pone muerto en true si la vida baja a 0
    var muerto: Bool {
        return vida <= 0
    }
    
    func muere() {
        print("AAAAAAAAAAAAA morido")
    }
}

protocol Evento{
    func laAlarmaHaSonado()
}

class Alarma{
    var delegate:Evento?
    
    func sonar(segundos:Int){
        sleep(UInt32(segundos))
        
        if let del = delegate {
            del.laAlarmaHaSonado()
        }
    }
}
