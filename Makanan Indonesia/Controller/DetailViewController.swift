//
//  DetailViewController.swift
//  Makanan Indonesia
//
//  Created by Muhammad Alfaraby on 08/10/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameFood: UILabel!
    @IBOutlet weak var photoFood: UIImageView!
    @IBOutlet weak var descriptionFood: UILabel!
    var food: Food?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = food {
                 photoFood.image = result.photo
                 nameFood.text = result.name
                 descriptionFood.text = result.description
             }
    }

}
  

