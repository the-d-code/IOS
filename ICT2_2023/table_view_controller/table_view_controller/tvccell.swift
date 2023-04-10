//
//  tvccell.swift
//  table_view_controller
//
//  Created by MAC on 3/13/23.
//

import UIKit

class tvccell: UITableViewCell {

    @IBOutlet weak var myimg: UIImageView!
    var img=[UIImage(named: "img1.jpeg"), UIImage(named: "img2.jpeg"), UIImage(named: "img3.jpeg"), UIImage(named: "img4.jpeg")]
    
    @IBOutlet weak var mylabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
