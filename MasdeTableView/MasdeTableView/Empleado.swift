//
//  Empleado.swift
//  MasdeTableView
//
//  Created by Erick González on 16/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class Empleado: NSObject {

    var nombre: String
    var sueldo: Float
    var foto : UIImage!
    var departamento : String
    
    init(nombre: String, sueldo: Float, foto: UIImage!, departamento: String){
    self.nombre = nombre
    self.sueldo = sueldo
    self.foto = foto
    self.departamento = departamento
    }
}
