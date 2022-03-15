import UIKit
//1. Crear una función que devuelva true o false según el número recibido sea par o no

func esPar (num: Int) -> Bool{
    if(num % 2 == 0){
        return true;
    }
    
    else{
        return false;
    }
}

if (esPar(num: 3)){
    print("El numero es par")
}
else{
    print("El numero es impar o es 0")
}

//2. Dados dos números, comprobar si el primero es divisible entre el segundo. Para ello, crear una función que devuelve true si lo es, no en caso contrario.

func esDivisible (num1: Int, num2: Int) -> Bool{
    
    if (num1 % num2 == 0){
        return true;
    }
    else{
        return false;
    }
}

if (esDivisible(num1: 6, num2: 2)){
    print("Los numeros son divisibles")
}
else{
    print("Los numeros no son divisibles")
}



//3. Dada una cantidad determinada de chicos y chicas, calcular el porcentaje de cada uno respecto al total. La función debe recibir un parámetro de tipo tupla y devolver los porcentajes en otra tupla


let chicos:Float = 44
let chicas:Float = 42

func porcentaje (_ per:(Float,Float))->(Float,Float){

    
    let chicos = per.0 / (per.0 + per.1) * 100
    let chicas = per.1 / (per.0 + per.1) * 100
    
    let tuplaDevuelve = (chicos,chicas)
    
    return tuplaDevuelve
}

let mix = (chicos,chicas)

var po = porcentaje(mix)

print("Porcentaje de chicos: \(po.0)")
print("Porcentaje de chicas: \(po.1)")
 

//4. Crear una función que recibe 2 tuplas (Int,Int). Cada tupla representa una fracción (numerador, denominador). La función debe devolver la suma de las dos fracciones

func fraccion (_ frac1:(Float,Float), _ frac2:(Float,Float))->(Float,Float){
    
    
    let nume1 = (frac2.1 * frac1.0)
    
    let denom = (frac2.1 * frac1.1)

    let nume2 = (frac1.1 * frac2.0)
        
    let resulfrac = ((nume1 + nume2), denom)
    
    return resulfrac
    
}

let fraccion1:(Float,Float) = (4,8)
let fraccion2:(Float,Float) = (6,5)

let a = fraccion(fraccion1, fraccion2)

print(a.0)
print("-")
print(a.1)

//5. Desarrollar una funcion para comprobar si un año es bisiesto:


    
func esBisiesto(year:Int){
    
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
        print("Es bisiesto")
    }
        
    else{
        print("No es bisiesto")
    }
        
        
}

esBisiesto(year: 1844)


//6. Escribir una función llamada “saluda”, que recibe un nombre y devuelve la frase “Hola + nombre”. Llamar a la función e imprimir la respuesta.

func saluda (nombre:String){
    print("Hola, \(nombre)")
}

saluda(nombre: "Jose")
 
/*PARA CUANDO VEAMOS FUNCIONES*/

//7 y 8. Crea una clase llamada Persona. Esta clase deberá tener un atributo «nombre», de tipo String. También deberá tener un método «setNombre», con un parámetro String, que permita cambiar el valor del nombre. Finalmente, también tendrá un método «saludar», que escribirá en pantalla «Hola, soy » seguido de su nombre.

class Persona{
    private var minombre:String
    
    public var nombre:String{
        get{
            return self.minombre
        }
        set(newNombre){
            self.minombre = newNombre
        }
    }
    
    init(nombre:String){
        self.minombre = nombre
    }
    
    func saludar(){
        print("Hola, bienvenido \(self.minombre)")
    }
}

var perso = Persona(nombre: "Jose")

perso.saludar()

perso.nombre = "Juan"

perso.saludar()

//9. (Opcional) Crea también una clase llamada PruebaPersona. Esta clase deberá contener sólo la función main, que creará dos objetos de tipo Persona, les asignará un nombre a cada uno y les pedirá que saluden.

class PruebaPersona{
    
    func main(){
        let perso1 = Persona(nombre: "Alfonso")
        let perso2 = Persona(nombre: "Roberto")
        
        perso1.saludar()
        perso2.saludar()
    }
    
}

var prueba = PruebaPersona()

prueba.main()

//10. (Opcional) Modificar la clase «PersonaInglesa» para que redefina el método «Saludar», para que escriba en pantalla «Hi, I am » seguido de su nombre;

//11. (opcional) se creará una nueva clase «PersonaItaliana», que deberá heredar las características de la clase «Persona», pero se deberá redefinir el método «Saludar», para que escriba en pantalla «Ciao»;

//12. (opcional) crea también una clase llamada PruebaPersona3, que deberá contener sólo la función «main» y creará un objeto de tipo «Persona», uno de tipo «PersonaInglesa», y uno de tipo «PersonaItaliana», les asignará un nombre, les pedirá que saluden y pedirá a la persona inglesa que tome té.
