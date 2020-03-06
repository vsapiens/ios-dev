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
        for subView in stRetro.arrangedSubviews {
            subView.alpha = 0
            subView.backgroundColor = nil
        }
        viewBlank.alpha = 0
        iniciarJuego()
    }
    @IBOutlet weak var stProbar: UIStackView!
    @IBOutlet weak var sgControl: UISegmentedControl!
    @IBOutlet weak var stAdivina: UIStackView!
    @IBOutlet weak var stRetro: UIStackView!
    @IBOutlet weak var viewBlank: UIView!
    @IBOutlet weak var btnAd1: UIButton!
    @IBOutlet weak var btnAd2: UIButton!
    @IBOutlet weak var btnAd3: UIButton!
    @IBOutlet weak var btnAd4: UIButton!

    var orderColor = [0,0,0,0]
    var intentos = 0
    
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
        intentos = 0
        stRetro.alpha = 0
        var random = [0,1,2,3,4,5]
        var key : Int!
        for subView in stProbar.arrangedSubviews {
            key =  Int.random(in: 0..<random.count)
            subView.backgroundColor = colors[random[key]]
            random.remove(at: key)
        }
        for subView in stAdivina.arrangedSubviews {
            subView.backgroundColor = UIColor.orange
        }
        for subView in stRetro.arrangedSubviews {
            subView.alpha = 0
            subView.backgroundColor = nil
        }
    }
    
    func probarJuego()->Bool{
        intentos += 1
        stRetro.alpha = 1
        var newOrder = Set<UIColor>()
        var inPlace = 0
        var inColor = 0
            
        for subView in stAdivina.arrangedSubviews {
                newOrder.insert(subView.backgroundColor!)
        }
        for subView in stProbar.arrangedSubviews {
            if newOrder.contains(subView.backgroundColor!){
                inColor += 1
            }
        }
        
        for i in 0...3 {
            if stProbar.arrangedSubviews[i].backgroundColor == stAdivina.arrangedSubviews[i].backgroundColor {
                inPlace += 1
            }
        }
        
        if inPlace == 4 {
            return true
        }
        
        inColor -= inPlace
        
        var x = 0
        
        while inColor != 0 {
            stRetro.arrangedSubviews[3-x].backgroundColor = UIColor.white
            stRetro.arrangedSubviews[3-x].alpha = 1
            x += 1
            inColor -= 1
        }
        
        while inPlace != 0 {
            stRetro.arrangedSubviews[3-x].backgroundColor = UIColor.red
            stRetro.arrangedSubviews[3-x].alpha = 1
            x += 1
            inPlace -= 1
        }

        while x <= 3 {
                stRetro.arrangedSubviews[3-x].backgroundColor = nil
                stRetro.arrangedSubviews[3-x].alpha = 0
                x += 1
        }
            
        return false
}
    
    
    @IBAction func runGame(_ sender: Any) {
        sgControl.selectedSegmentIndex = 0
        stProbar.alpha = 0
        viewBlank.alpha = 0
        iniciarJuego()
    }
    
    @IBAction func testGame(_ sender: Any) {
        if Set(orderColor).count < orderColor.count {
            let alert = UIAlertController(title: "Error", message: "No puede haber colores iguales.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
        } else if probarJuego() {
        let alert = UIAlertController(title: "Felicidades", message: "¡Haz Ganado en \(intentos) intentos!", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(accion)
        present(alert,animated: true,completion: nil)
            iniciarJuego()
        }
    }
    
    //Hide or display
    @IBAction func segmentControlChanged(_ sender: Any) {
        switch sgControl.selectedSegmentIndex
        {
        case 0:
            stProbar.alpha = 0
            viewBlank.alpha = 0
        case 1:
            stProbar.alpha = 1
            viewBlank.alpha = 1
        default:
            break
        }
        
    }
    
    
}

