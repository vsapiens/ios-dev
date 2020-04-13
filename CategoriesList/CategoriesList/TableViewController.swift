//
//  TableViewController.swift
//  CategoriesList
//
//  Created by Erick González on 01/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,administraCategorías {
    func agregaCategoría(category: Categoria) {
        posiblesColores = posiblesColores.filter{$0 != category.color}
        tasks.append(category)
        tableView.reloadData()
    }
    
    func modificaCategoría(category: Categoria,color: UIColor) {
        tasks[selectedIndex] = category
        posiblesColores = posiblesColores.filter{$0 != category.color}
        posiblesColores.append(color)
        tableView.reloadData()
    }
    
    var tasks = [Categoria]()
    var posiblesColores = [UIColor.blue, UIColor.green, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]
    var selectedIndex : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Categorias"
        tableView.reloadData()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCategoria", for: indexPath)
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = tasks[indexPath.row].titulo
        cell.contentView.backgroundColor = tasks[indexPath.row].color.withAlphaComponent(0.75)
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaColor = segue.destination as! ViewController
        vistaColor.delegado = self
        vistaColor.colores = posiblesColores
        
        if segue.identifier == "muestra"{
            let indexPath = tableView.indexPathForSelectedRow!
            vistaColor.current = tasks[indexPath.row]
            selectedIndex = indexPath.row
            vistaColor.isEnabled = false
            vistaColor.title = "Modificar Categoría"
        } else {
            vistaColor.isEnabled = true
            vistaColor.title = "Nueva Categoría"
        }
    }
}
