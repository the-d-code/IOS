//
//  ViewController.swift
//  picker_demo
//
//  Created by MAC on 3/7/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
    }
    var city:[String]=["Surat", "Mumbai", "Navsari"]
    @IBOutlet weak var mipicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        self.mipicker.delegate=self
        self.mipicker.dataSource=self
    }


}

