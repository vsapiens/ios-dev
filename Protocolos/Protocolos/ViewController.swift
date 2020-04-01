//
//  ViewController.swift
//  Protocolos
//
//  Created by Erick González on 30/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController,protocoloSetColor {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setColor(color: UIColor) {
        uiView.backgroundColor = color
    }
    @IBOutlet weak var uiView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewGuardar = segue.destination as! ViewControllerSeleccionar
        viewGuardar.delegado = self
    }

}

