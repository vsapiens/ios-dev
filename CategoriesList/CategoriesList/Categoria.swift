//
//  Categoria.swift
//  CategoriesList
//
//  Created by Erick González on 01/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class Categoria: NSObject {
    var titulo : String =  ""
    var color : UIColor = UIColor.gray
    
    init(titulo: String, color: UIColor) {
        self.titulo = titulo
        self.color = color
    }
    
}
