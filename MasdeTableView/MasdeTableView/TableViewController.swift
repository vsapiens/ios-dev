//
//  TableViewController.swift
//  MasdeTableView
//
//  Created by Erick González on 16/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell{
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbSueldo: UILabel!
    @IBOutlet weak var lbDepartamento: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    
    
    
}

class TableViewController: UITableViewController {
    var empleados = [Empleado]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let emp1 = Empleado(nombre: "Beto", sueldo: 12344.21,foto: UIImage(named:"beto.png"),departamento: "Finanzas" )
        let emp2 = Empleado(nombre: "Elmo", sueldo: 43534.21,foto: UIImage(named:"elmo.png"),departamento: "HR" )
        let emp3 = Empleado(nombre: "Enrique", sueldo: 1256734.21,foto: UIImage(named:"enrique.png"),departamento: "Informática" )
        let emp4 = Empleado(nombre: "Lucas", sueldo: 12789834.21,foto: UIImage(named:"lucas.png"),departamento: "Limpieza" )
        let emp5 = Empleado(nombre: "Lucas", sueldo: 12789834.21,foto: UIImage(named:"abelardo.png"),departamento: "Limpieza" )
        
        empleados.append(emp1)
        empleados.append(emp2)
        empleados.append(emp3)
        empleados.append(emp4)
        empleados.append(emp5)
        title = "Empleados"
        tableView.reloadData()
    
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return empleados.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! CustomTableViewCell

        cell.imgFoto.image = empleados[indexPath.row].foto
        cell.lbNombre.text = empleados[indexPath.row].nombre
        cell.lbDepartamento.text = empleados[indexPath.row].departamento
        cell.lbSueldo.text = String(empleados[indexPath.row].sueldo)
        if(indexPath.row % 2 == 0){
            cell.contentView.backgroundColor = UIColor.systemBlue
        } else {
            cell.contentView.backgroundColor = UIColor.white
        }
        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            empleados.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let temp = empleados[fromIndexPath.row]
        empleados[fromIndexPath.row] = empleados[to.row]
        empleados[to.row] = temp
        tableView.reloadData()

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(165)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
