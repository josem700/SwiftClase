import UIKit

/* Desarrollar un programa en swift que... */
//1. Que escriba los múltiplos de 7 entre 0 y 50.

print("Multiplos de 14")
for i in 0...50 where i%7==0{
    print(i)
}

//2. Que escriba las tablas de multiplicar del 0 al 10.
for i in 0...10{
    print("------------TABLA DEL \(i)")
    for j in 0...10{
        let resul = i*j
        print ("\(i) X \(j) = \(resul)")
    }
}
//3. (Opcional) Que calcule la media de 10 números aleatorios.
var nums = 0
for i in 0...10{
    nums += Int.random(in: 0...100)
}

var media = nums / 3

print ("La media es: ", media)


//4. (Opcional) Que escriba los primeros 25 dígitos de la sucesión de Fibonacci.

var valorInit:Int = 1;
// valor del segundo elemento de la serie
var valorNext:Int = 1;


print("========= Serie de Fibonacci =========")

// Ciclo que repite 91 veces el cáculo, más de 91 se cae el framework

for  i in 1...25  {
    // Solo imprime el valor 1 para el primer y segundo elemento de la serie
    if ( i < 3 ) {
        print("\(i) 1")
    } else {
        var nuevoValor = valorInit + valorNext;
        print("\(i) \(nuevoValor)")
        valorInit = valorNext
        valorNext = nuevoValor
    }
}


//5. (Opcional) Imprime "Buscando el número X" siendo X un número aleatorio. A continuación imprime números aleatorios entre 1 y 20 hasta que coincida con X.

//6. Imprimir el número más pequeño
let n1 = 3, n2 = 8, n3 = 5, n4 = 6

var nums2 = [n1,n2,n3,n4]

var menorActual = 10

for i in nums2{
    if (i<menorActual){
        menorActual = i
    }
}

print("El numero menor es: \(menorActual)")
/*7. Escribir un switch que imprima:
"Aquí" si la distancia es 0
"Aquí al lado" si está a menos de 5
"Se puede ir andando" si está entre 5 y 30
"Lejos" si es menos de 60
"Muy lejos" más de 60
*/
let distancia = 15

switch distancia {
    case 0:
        print("Aquí")
case _ where distancia < 5:
        print("Aquí al lado")
    case 5...15:
        print("Se puede ir andando")
case _ where distancia < 60:
    print("Lejos")
case _ where distancia > 60:
    print("Muy Lejos")
    
    default:
        print("En ningún lado")
}

//7. Crea un array de tipo char con un tamaño de 26 elementos. Rellena el array con los números del 65 al 90, ambos incluidos. Por último, imprime todos los elementos del array.
//Nota: Casting Int to Char -> Character(UnicodeScalar(i)!)

var Char = [Character](repeating: "a", count: 26)

var cont = 0
for i in 65...90{
    Char[cont] = Character(UnicodeScalar(i)!)
    cont += 1
}
print(Char)



//8. (Opcional) Crea dos arrays (A y B) de tamaño 5 y rellénalo con números. Después crea un tercero con el doble de tamaño cuyos valores serán: el 1º de A, el 1º de B, el 2º de A, el 2º de B, etc.

 var A = [3,2,7,9,4]
 var B = [0,7,9,5,8]

var C:[Int] = [0,0,0,0,0,0,0,0,0,0]

cont = 0
var cont2 = 0


for i in 0...(C.count - 1){
    if  i % 2 == 0 {
        C[i] = A[cont]
        cont += 1
    }
    else{
        C[i] = B [cont2]
        cont2 += 1
    }
}

print(C)

//9. Crea un array de dos dimensiones de tamaño 2x5 con los valores enteros que quieras. Crea un tercer array de tamaño 5 y rellénalo con la suma de los valores en la posición 0 del array bidimensional. Por ejemplo, tenemos un array de dos dimensiones {1,2,3,4,5},{5,4,3,2,1}, el tercer array debe ser la suma del array bidimensional: {1+5, 2+4, 3+3, 4+2, 5+1}

let bidim = [
    [1,2,3,4,5],
    [5,4,3,2,1]
]

var bidimsum:[Int] = [0,0,0,0,0,]


for i in 0...4{
    bidimsum[i] = bidim[0][i] + bidim[1][i]
    
}

print(bidimsum)

//10. Crear un array bidimensional de 6x6 y complétalo con los números que tú quieras. Imprime el array y la suma de cada una de sus filas.

var BidimGordo = [Array](repeating: Array(repeating: 0, count: 6), count: 6)

for i in 0...5{
    for j in 0...5{
        BidimGordo[i][j] = Int.random(in: 10...90)
    }
}

print ("Array: ")

for a in BidimGordo{
    for b in a{
        print(b, terminator: " ")
    }
    print(" ")
}

var arraysum = [Int](repeating: 0, count: 6)

for i in 0...5{
    for j in 0...5{
        arraysum[i] += BidimGordo[i][j]
    }
}

print("El array sumado es: ", arraysum)





//11. Crea 3 arrays del mismo tamaño. Rellena los dos primeros con números aleatorios. Rellena el tercero de tal forma que la primera posición sea el resultado de multiplicar el primer elemento del array 1 con el primer elemento del array 2. Así sucesivamente hasta rellenar el tercer array.

var array1 = [Int](repeating: 0, count: 5)
var array2 = [Int](repeating: 0, count: 5)
var array3 = [Int](repeating: 0, count: 5)

for i in 0...4{
    array1[i] = Int.random(in: 10...20)
    array2[i] = Int.random(in: 10...20)
}

for i in 0...4{
    array3[i] = array1[i] * array2[i]
}
print(array1,array2)
print("Array Multiplicado: ",array3)


//12. (Opcional) Crea un array con un tamaño de 10 posiciones y rellénalo con números aleatorios. Recorre el array para saber cuántos números pares tiene. Después, crea otro array y llénalo sólo con los números pares que tenía el array anterior.

var nume = [Int](repeating: 0, count: 10)
var pares:[Int]=[]

for i in 0...(nume.count-1){
    nume[i] = Int.random(in: 10...90)
}

for j in nume where j % 2 == 0{
    pares.append(j)
}

print(pares)



//13. (Opcional) Crear un array bidimensional de 3x6 con los números que desees. Crea otro array de 6x3 y traspón el primero en el segundo. Es decir, si tenemos este de 2x3 {1, 3, 5} debería quedar {1, 2} {2, 4, 6} {3, 4} {5, 6}array
 
