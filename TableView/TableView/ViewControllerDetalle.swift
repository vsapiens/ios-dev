//
//  ViewControllerDetalle.swift
//  TableView
//
//  Created by Erick González on 02/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbDato.text = datoMostrar
        title = "Detalle"
    }
    
    @IBOutlet weak var lbDato: UILabel!
    
    var datoMostrar: String!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
