import UIKit

enum Palo {
    case bastos
    case espadas
    case copas
    case oros
}

class Carta {
    
    var numero: Int?
    var palo: Palo?
    
    init?(_ numero: Int,_ palo: Palo){
        
        if(numero>=0 && numero != 8 && numero != 9 && numero<=12){
            
            self.numero = numero
            self.palo = palo
            
        }
        else{
            print("El numero debe estar entre 0 y 12 y no puede ser ni 8 ni 9")
        }
    }
    
    func descripcion() -> String{
        return "La carta es el \(numero!) de \(palo!)"
    }
    
    
}


class Mano {
    
    var cartas:[Carta]
    var tamaño:Int
    
    init(){
        self.cartas = []
        self.tamaño = cartas.count
    }
    
    func addCarta(_ carta:Carta){
        cartas.append(carta)
        tamaño += 1
    }
    
    func getCarta(pos:Int) -> Carta? {
        
        if(pos>0 && pos != 8 && pos != 9 && pos<=12){
            return cartas[pos]
        }
        
        else{
            print("Posicion Incorrecta")
            return nil
        }
    }
}


var mano = Mano()
mano.addCarta(Carta(1, .oros)!)
mano.addCarta(Carta(10, .espadas)!)
mano.addCarta(Carta(7, .copas)!)
print("Hay \(mano.tamaño) cartas")
for num in 0..<mano.tamaño {
  if let carta = mano.getCarta(pos:num) {
    print(carta.descripcion())
 
  }
}


