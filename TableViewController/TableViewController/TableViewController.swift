//
//  TableViewController.swift
//  TableViewController
//
//  Created by Erick González on 05/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // Creador de arreglo vacío de la clase Jugador
    var listaJugadores = [Jugador]()
    
    // Crear el apuntador
    //var lista : [Jugador]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let jugador1 = Jugador(nombre: "Moises El Niño Mosca",puntos: 1800,email: "moi_mado@icloud.com", foto: UIImage(named: "Donald")!)
        
        let jugador2 = Jugador(nombre: "Carlos El Niño Tronado",puntos: 900,email: "estronado@google.com", foto: UIImage(named: "Usuario")!)
        
        let jugador3 = Jugador(nombre: "Carrillo El Niño IOS",puntos: 2500,email: "carrillo@apple.com",foto: UIImage(named: "Mickey")!)
        
        listaJugadores += [jugador1,jugador2,jugador3]
        title = "Jugadores"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.imageView?.image = listaJugadores[indexPath.row].foto
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vistaDetalle = segue.destination as! ViewController
        let index = tableView.indexPathForSelectedRow!
        vistaDetalle.player = listaJugadores[index.row]
    }
    

}
