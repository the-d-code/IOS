//
//  ViewController.swift
//  alertr_demo
//
//  Created by MAC on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_alert(_ sender: Any) {
        
        let alert=UIAlertController(title: "My Alert Dialog", message: "Are you sure?", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in print(alert.textFields?.first?.text)}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in print("Cancel buttton pressed")}))
       // alert.addTextField(configurationHandler: {_ in })
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

