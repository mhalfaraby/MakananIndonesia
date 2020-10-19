//
//  MakananTableView.swift
//  Makanan Indonesia
//
//  Created by Muhammad Alfaraby on 08/10/20.
//

import UIKit

class FoodTableView: UITableViewCell {

    
    @IBOutlet weak var photoFood: UIImageView!
    @IBOutlet weak var nameFood: UILabel!
    @IBOutlet weak var descriptionFood: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
