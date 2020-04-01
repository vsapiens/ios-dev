//
//  ViewController.swift
//  TableView
//
//  Created by Erick González on 02/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Datos"
    }
    var lista = ["a","b","c","d","e","f","g","h","i","j","k"]

    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Métodos de table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        celda.textLabel?.text = lista[indexPath.row]
        celda.detailTextLabel?.text = String(indexPath.row)
        celda.imageView?.image = UIImage(named: "EsferaAzul")
        
        let tipoLetra = UIFont(name: "Palatino", size:30)
        celda.textLabel?.textColor = UIColor.white
        celda.textLabel?.font = tipoLetra
        return celda
    }
    
    //MARK: -Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.datoMostrar = lista[indice.row]
    }
}

