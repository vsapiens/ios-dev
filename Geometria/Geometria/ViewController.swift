//
//  ViewController.swift
//  Geometria
//
//  Created by Erick González on 27/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbProps: UILabel!
    @IBOutlet weak var lbValue: UILabel!
    
    
    var imgFoto: UIImage!
    var props: String!
    var value: String!
    
    @IBAction func inicio(_ sender: Any) {
        lbProps.text = ""
        lbValue.text = ""
        imgView.image = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind (unwindSegue: UIStoryboardSegue) {
        imgView.image = imgFoto
        lbProps.text = props
        lbValue.text = value
    }
}

