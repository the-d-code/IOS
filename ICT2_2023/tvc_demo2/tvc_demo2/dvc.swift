//
//  dvc.swift
//  tvc_demo2
//
//  Created by MAC on 2/20/23.
//

import UIKit

class dvc: UIViewController {

    @IBOutlet weak var l1: UILabel!
    var myString:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        l1.text=myString
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
