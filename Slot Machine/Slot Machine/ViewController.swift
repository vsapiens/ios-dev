//
//  ViewController.swift
//  Slot Machine
//
//  Created by Erick González on 26/03/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var pvPicker: UIPickerView!
    
    let pickerImages = [UIImage(named: "lemon.png")!,UIImage(named:"seven.png")!,UIImage(named: "bar.png")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Change Buttons
        btnReset.layer.cornerRadius = 10
        btnReset.clipsToBounds = true
        btnGo.layer.cornerRadius = btnGo.frame.width/2
        btnGo.layer.masksToBounds = false
        lbResult.text = "You WON!"
        lbResult.backgroundColor = UIColor.white
        lbResult.textColor = UIColor.red
        lbResult.alpha = 0
        // Set delegate
        pvPicker.delegate = self
        pvPicker.dataSource = self
        pvPicker.isUserInteractionEnabled = false
    }
    
    @IBAction func reset(_ sender: Any) {
        lbResult.alpha = 0
        pvPicker.selectRow(0, inComponent: 0, animated: true)
        pvPicker.selectRow(0, inComponent: 1, animated: true)
        pvPicker.selectRow(0, inComponent: 2, animated: true)
    }
    
    @IBAction func go(_ sender: Any) {
        var num = [Int]()
        
        for _ in 0...2 {
            num.append(Int.random(in: 0..<3))
        }
        
        pvPicker.selectRow(num[0], inComponent: 0, animated: true)
        pvPicker.selectRow(num[1], inComponent: 1, animated: true)
        pvPicker.selectRow(num[2], inComponent: 2, animated: true)
        
        if(Set(num).count == 1){
            lbResult.alpha = 1
        }
    }
    // MARK: -UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerImages.count
    }
    // MARK: -UIPickerViewDelegate
     func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 80))
        
        let imageView = UIImageView(frame: CGRect(x: 27, y: 0, width: 80, height: 80))
      imageView.image = pickerImages[row]
      view.addSubview(imageView)
      return view
    }
    

}

