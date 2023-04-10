//
//  ViewController.swift
//  pcker_demo2
//
//  Created by MAC on 3/7/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return 1
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return city.count
        if component==0 {
            return city.count
        }
        if component==1 {
            return trans.count
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return city[row]
        if component==0 {
           return city[row]
        }
        if component==1 {
            return trans[row]
        }
        return nil
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        mylabel.text=city[row]
    }
    
    @IBOutlet weak var mylabel: UILabel!
    var city:[String]=["Surat", "Mumbai", "navsari", "Pune"]
    var trans:[String]=["Cabs","BRTS","Rickshaw"]
    @IBOutlet weak var mypicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.mypicker.delegate=self
        self.mypicker.dataSource=self
    }


}

