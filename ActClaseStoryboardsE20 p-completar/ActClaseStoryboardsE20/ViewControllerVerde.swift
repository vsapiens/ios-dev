//
//  ViewControllerVerde.swift
//  ActClaseStoryboardsE20
//
//  Created by Erick González on 27/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerVerde: UIViewController {

    @IBOutlet weak var tfCelular: UITextField!
    @IBOutlet weak var imgFoto: UIImageView!
    
    var foto: UIImage!
    var cel:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfCelular.text = cel
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        vistaInicial.img = imgFoto.image
        vistaInicial.cel = tfCelular.text
    }

}
