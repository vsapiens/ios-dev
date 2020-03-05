//
//  ViewController.swift
//  TableViewController
//
//  Created by Erick González on 05/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbNombre.text = player.nombre
        lbEmail.text = player.email
        lbPuntos.text = String(player.puntos)
        imgFoto.image = player.foto
        title = "Información"
    }
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbEmail: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    
    var player : Jugador!
}

