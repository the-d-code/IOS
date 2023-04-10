//
//  dvc.swift
//  ICT2_data_sharing
//
//  Created by MAC on 1/24/23.
//

import UIKit

class dvc: UIViewController {

    @IBOutlet weak var l1: UILabel!
    var mystr = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        l1.text = mystr
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
