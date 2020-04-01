//
//  ViewControllerSeleccionar.swift
//  Protocolos
//
//  Created by Erick González on 30/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

protocol protocoloSetColor {
    func setColor(color:  UIColor)-> Void
}
class ViewControllerSeleccionar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var delegado : protocoloSetColor!
    
    @IBAction func guardarColor(_ sender: UIButton) {
        if let color = sender.backgroundColor {
            delegado.setColor(color: color)
            dismiss(animated: true, completion: nil)
        }
    }
    

}
