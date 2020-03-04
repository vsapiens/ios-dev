//
//  ViewControllerEsfera.swift
//  Geometria
//
//  Created by Erick González on 02/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewControllerEsfera: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var lbRadio: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(Double(lbRadio.text!) == nil){
            let alert = UIAlertController(title: "Error", message: "Los campos deben de tener valor númerico.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
            return false
        } else{
            return true
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let vistaInicial = segue.destination as! ViewController
        vistaInicial.imgFoto = imgView.image
        vistaInicial.lbProps.numberOfLines = 1
        vistaInicial.props = "Radio = \(lbRadio.text!)"
        let radius = Double(lbRadio.text!)
        let esfera = (4*Double.pi*pow(radius!,3))/3
        vistaInicial.value = "\(String(describing: esfera))"
    }
    
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
    
}

