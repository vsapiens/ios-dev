//
//  Empleado.swift
//  pruebaCicloVida
//
//  Created by Erick González on 02/04/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class Empleado: Codable {
    var nombre: String
    var ident: Int
    init(nombre : String, ident: Int) {
        self.nombre = nombre
        self.ident = ident
    }
}
