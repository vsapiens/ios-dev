//
//  ViewController.swift
//  MiniReto1
//
//  Created by Erick González on 05/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stProbar.alpha = 0
        stRetro.alpha = 0
        iniciarJuego()
    }
    @IBOutlet weak var stProbar: UIStackView!
    @IBOutlet weak var sgControl: UISegmentedControl!
    @IBOutlet weak var stAdivina: UIStackView!
    @IBOutlet weak var stRetro: UIStackView!
    
    @IBOutlet weak var btnAd1: UIButton!
    @IBOutlet weak var btnAd2: UIButton!
    @IBOutlet weak var btnAd3: UIButton!
    @IBOutlet weak var btnAd4: UIButton!
    var orderColor = [0,0,0,0]
    
    @IBAction func sProbar1(_ sender: Any) {
        orderColor[0] = (orderColor[0] + 1) % 6
        btnAd1.backgroundColor = colors[orderColor[0]]
    }
    @IBAction func sProbar2(_ sender: Any) {
        orderColor[1] = (orderColor[1] + 1) % 6
        btnAd2.backgroundColor = colors[orderColor[1]]
    }
    @IBAction func sProbar3(_ sender: Any) {
        orderColor[2] = (orderColor[2] + 1) % 6
        btnAd3.backgroundColor = colors[orderColor[2]]
    }
    @IBAction func sProbar4(_ sender: Any) {
        orderColor[3] = (orderColor[3] + 1) % 6
        btnAd4.backgroundColor = colors[orderColor[3]]
    }
    
    let colors = [UIColor.red,UIColor.green,UIColor.blue,UIColor.yellow,UIColor.orange,UIColor.black]
    
    func iniciarJuego(){
        var random = [0,1,2,3,4,5]
        var key : Int!
        for subView in stProbar.subviews {
            key =  Int.random(in: 0..<random.count)
            subView.backgroundColor = colors[random[key]]
            random.remove(at: key)
        }
        for subView in stAdivina.subviews {
            subView.backgroundColor = UIColor.white
        }
        for subView in stRetro.subviews {
            subView.backgroundColor = UIColor.white
        }
    }
    
    func probarJuego()->Bool{
        for i in 0..<3{
            if stProbar.subviews[i].backgroundColor == stAdivina.subviews[i].backgroundColor {
                stRetro.subviews[i].backgroundColor = UIColor.white
            } else {
                
            }
            
        }
        return true
    }
    
    
    @IBAction func runGame(_ sender: Any) {
        iniciarJuego()
    }
    
    @IBAction func testGame(_ sender: Any) {
        if Set(orderColor).count < orderColor.count {
            let alert = UIAlertController(title: "Error", message: "No puede haber colores iguales.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
        } else if probarJuego(){
        let alert = UIAlertController(title: "Error", message: "¡Haz Ganado!", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(accion)
        present(alert,animated: true,completion: iniciarJuego)
        } else {
            
        }
    }
    
    //Hide or display
    @IBAction func segmentControlChanged(_ sender: Any) {
        switch sgControl.selectedSegmentIndex
        {
        case 0:
            stProbar.alpha = 0
        case 1:
            stProbar.alpha = 1
        default:
            break
        }
        
    }
    
    
}

