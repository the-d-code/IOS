//
//  ViewController.swift
//  collection_demo
//
//  Created by MAC on 3/21/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=mycv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! mycellCollectionViewCell
        cell.layer.cornerRadius=10
        cell.mylbl.text=city[indexPath.item]
        return cell
    }
    

    @IBOutlet weak var mycv: UICollectionView!
    var city:[String]=["Surat", "Mumbai", "Pune"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

