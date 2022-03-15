import UIKit

//1. Crear una enumeración para los tipos de usuario llamada “UserType”: admin, editor, author, reader

enum UserType {
    case admin
    case editor
    case author
    case reader
}
//2. Crear una estructura llamada “User” con una variable de sólo lectura llamada “type”. Inicialízala a .admin
//3. (opcional) añadir una variable para el nombre de usuarioç

struct User {
    let type = UserType.admin
    var username:String
    
    func saludo(){
        print("Hola, \(username)")
    }
}

//4. Implementa una función que recibe un User e imprime en consola el tipo de usuario.

func WhatUser (user:User) -> UserType{
    return user.type
}
//5. Comprueba el tipo de usuario de User

let usuario = User(username: "jose")
let TypeUser = WhatUser(user: usuario)

print(TypeUser)

//6. (opcional) imprimir un saludo al usuario.

usuario.saludo()
