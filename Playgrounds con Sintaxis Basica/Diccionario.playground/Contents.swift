import UIKit
//Definir un array de tuplas (String, String) y añadimos algunas palabras traducidas (español, inglés)
var diccionario = [("Hola", "Hello"), ("Coche", "Car"), ("Navaja", "Knife"), ("Rojo","Red")]
//Función que busca la traducción en ambos sentidos, devuelve la traducción o un mensaje de error, si no se encuentra.
func traducir (texto: String) -> (String, String) {
    
    for i in 0...diccionario.count - 1{
        if(texto == diccionario[i].0){
            print("Palabra: \(texto) || Traducción: \(diccionario[i].1)")
            return(texto,diccionario[i].1)
        }
        
    }

    return ("","")
    
}
   var traduc = traducir(texto: "Coche")
//Función que permite añadir una palabra con su traducción
func addWord (palabra: String, traduccion: String){
    
    if !palabra.isEmpty && !traduccion.isEmpty{
        diccionario.append((palabra,traduccion))
        print("Palabra '\(palabra)' añadida correctamente")
    }
    else{
        print("Error, introduce la palabra y su traduccion")
    }
}

addWord(palabra: "Antorcha", traduccion: "Torch")

//(Opcional) Función que permite modificar una palabra

//(Opcional) Función que permite eliminar una palabra del diccionario

