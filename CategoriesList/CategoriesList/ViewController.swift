//
//  ViewController.swift
//  CategoriesList
//
//  Created by Erick González on 01/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

protocol administraCategorías{
    func agregaCategoría(category : Categoria)->Void
    func modificaCategoría(category : Categoria, color: UIColor)->Void
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var delegado : administraCategorías!
    var current = Categoria(titulo: "", color: UIColor.white)
    
    var categorias : [Categoria]!
    var colores : [UIColor]!
    var isEnabled : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if isEnabled {
            tfNombre.isUserInteractionEnabled = true
        }
            else {
            tfNombre.isUserInteractionEnabled = false
            self.view.backgroundColor = current.color
            tfNombre.text = current.titulo
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellColor")!
        celda.contentView.backgroundColor = colores[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if isEnabled {
            if tfNombre.text != "" {
                let newCategoria = Categoria(titulo: tfNombre.text!, color: colores[indexPath.row])
            delegado.agregaCategoría(category: newCategoria)
                navigationController?.popViewController(animated: true)
            }
        } else {
            let newCategoria = Categoria(titulo: current.titulo, color: colores[indexPath.row])
            delegado.modificaCategoría(category: newCategoria,color: current.color)
                        navigationController?.popViewController(animated: true)
        }
        
    }
    
}

