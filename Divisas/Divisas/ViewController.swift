//
//  ViewController.swift
//  Divisas
//
//  Created by Erick González on 13/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tfTipodeCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDollars: UITextField!
    @IBOutlet weak var imgDinero: UIImageView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        imgDinero.image = UIImage(named: "money")
       }
    
    @IBAction func calcularDivisa(_ sender: Any) {
        if let tipoCambio = Double(tfTipodeCambio.text!),
            let pesos = Double(tfPesos.text!){
            let dolares = pesos / tipoCambio
            tfDollars.text = "\(dolares)"
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Los campos deben de tener valor númerico.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
        }
    }
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
}

