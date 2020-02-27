//
//  ViewControllerInfo.swift
//  storyboardsE20 p-completar
//
//  Created by Erick González on 24/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbAncho: UILabel!
    @IBOutlet weak var lbAltura: UILabel!
    
    var foto: UIImage!
    var ancho: CGFloat!
    var altura: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgFoto.image = foto
        lbAncho.text = String(describing: ancho!)
        lbAltura.text = String(describing: altura!)
    }


}
