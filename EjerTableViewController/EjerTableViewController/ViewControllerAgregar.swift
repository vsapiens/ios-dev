//
//  ViewControllerAgregar.swift
//  EjerTableViewController
//
//  Created by Erick González on 26/03/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

protocol protocoloAgregarJugador {
    func agregarJugador(jug : Jugador) -> Void
}

class ViewControllerAgregar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Agregar Jugador"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    var delegado : protocoloAgregarJugador!
    
    @IBAction func guardarJugador(_ sender: UIButton) {
        if let nom = tfNombre.text,
            let punt = Int(tfPuntos.text!),
            let ema = tfEmail.text{
            
            let unJugador = Jugador(nombre: nom, puntos: punt, email: ema, foto: nil)
            delegado.agregarJugador(jug: unJugador)
            navigationController?.popViewController(animated: true)
        }
        
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
