import UIKit
import Foundation

var str = "Hello, playground"

class Empleado{

    var ident : Int
    var nombre : String
    var apellidos : String
    var depto : String

    init(ident: Int, nombre: String, apellidos: String, depto: String) {
         self.ident = ident
         self.nombre = nombre
         self.apellidos = apellidos
         self.depto = depto
    }
}

let emp1 = Empleado(ident: 123, nombre : "Perla",   apellidos : "Leal Flores", depto : "Ventas")

print("Muestra el empleado 1")

print(emp1)

