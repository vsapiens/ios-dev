//
//  ViewController.swift
//  Animation
//
//  Created by Erick González on 17/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var uiBlue: UIView!
    @IBOutlet weak var uiYellow: UIView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imgBall: UIImageView!
    @IBOutlet weak var lbHola: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBAction func moverPelota(_ sender: Any) {
        
        let newXPos = CGFloat(slider.value) * uiBlue.bounds.width - CGFloat(imgBall.frame.origin.x/2)
        imgBall.frame = CGRect (x: newXPos, y: imgBall.frame.origin.y,width: imgBall.frame.width, height: CGFloat(50))
    }
    
    
    @IBAction func smControl(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0{
            UIView.animate(withDuration: 1){
            self.lbHola.frame.origin.x = CGFloat(30)
            }
        } else {
            UIView.animate(withDuration: 1){
            self.lbHola.frame.origin.x = CGFloat(350)
            }
        }

    }
    
    
}

