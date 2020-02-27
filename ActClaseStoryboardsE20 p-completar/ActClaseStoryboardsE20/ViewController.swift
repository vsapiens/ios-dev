//
//  ViewController.swift
//  ActClaseStoryboardsE20
//
//  Created by Yolanda Martinez on 25/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var tfCel: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    
    var nombre:String!
    var cel:String!
    var img:UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindVerde (unwindSegue: UIStoryboardSegue) {
        tfCel.text = cel
        imgView.image = img
    }
    @IBAction func unwindAzul (unwindSegue: UIStoryboardSegue) {
        lbNombre.text = nombre
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nombre" {
            let vistaAzul = segue.destination as! ViewControllerAzul
            vistaAzul.nombre = lbNombre.text!
        } else {
            let vistaVerde = segue.destination as! ViewControllerVerde
            vistaVerde.cel = tfCel.text!
        }
}
}
