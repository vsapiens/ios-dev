//
//  Jugador.swift
//  TableViewController
//
//  Created by Erick González on 05/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre : String = ""
    var puntos : Int = 0
    var email : String = ""
    var foto : UIImage = UIImage(named: "Usuario")!
    
    init(nombre : String, puntos : Int, email : String, foto : UIImage){
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
        self.foto = foto
    }

}
