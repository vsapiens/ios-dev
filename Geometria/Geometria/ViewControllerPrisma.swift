//
//  ViewControllerPrisma.swift
//  Geometria
//
//  Created by Erick González on 02/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewControllerPrisma: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbLargo: UITextField!
    @IBOutlet weak var lbAncho: UITextField!
    @IBOutlet weak var lbAltura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if Double(lbLargo.text!) == nil ||  Double(lbAncho.text!) == nil || Double(lbAltura.text!) == nil {
            let alert = UIAlertController(title: "Error", message: "Los campos deben de tener valor númerico.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
            return false
        } else{
            return true
    }
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        
        let largo = Double(lbLargo.text!)
        let ancho = Double(lbAncho.text!)
        let altura = Double(lbAltura.text!)
        let prisma = largo! * ancho! * altura!
        vistaInicial.imgFoto = imgView.image
        vistaInicial.lbProps.numberOfLines = 3
        vistaInicial.props =
        """
        Largo  = \(lbLargo.text!)
        Ancho  = \(lbAncho.text!)
        Altura = \(lbAltura.text!)
        """
        vistaInicial.value = "\(String(describing: prisma))"
    }
    
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
}
