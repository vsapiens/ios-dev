//
//  ViewController.swift
//  pruebaCicloVida
//
//  Created by Yolanda Martinez on 3/4/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfIdent: UITextField!
    @IBOutlet weak var tableView: UITableViewCell!
    var emps : [Empleado]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func dataFileURL()-> URL{
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("Empleados.plist")
        print(pathArchivo.path)
        return pathArchivo
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "idCell")! as UITableViewCell
        cell.textLabel?.text = emps[indexPath.row].nombre
        cell.detailTextLabel?.text = String(emps[indexPath.row].ident)
        return cell
    }
    
    @IBAction func agregarEmpleado(_ sender: Any) {
        if let nombre = tfNombre.text, let ident = Int(tfIdent.text!){
            let newEmpleado = Empleado(nombre: nombre, ident: ident)
            emps.append(newEmpleado)
        }
    }
    
}

