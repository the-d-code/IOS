//
//  ViewController.swift
//  ICT2_table_demo
//
//  Created by MAC on 2/13/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return city.count
      
           
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
    
        return cell
    }
    
    @IBAction func btn_add(_ sender: Any) {
        city.append(t1.text!)
        tv.beginUpdates()
        tv.insertRows(at: [IndexPath(row: city.count-1, section: 0)], with: .automatic)
        tv.endUpdates()
    }
    
     
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var t1: UITextField!
   
    @IBOutlet weak var tv: UITableView!
    var city:[String]=["Surat", "Mumbai", "Navsari"]
    var cri="cell"
    
    var tservice:[String]=["Cabs", "BRTS", "Rickshaw"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tv.register(UITableViewCell.self, forCellReuseIdentifier: cri)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        l1.text = city[indexPath.row]
    }
    
}

