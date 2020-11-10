//
//  ViewController.swift
//  Makanan Indonesia
//
//  Created by Muhammad Alfaraby on 08/10/20.
//

import UIKit

class ViewController: UIViewController  {
    @IBOutlet weak var foodTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Makanan Indonesia"
        foodTableView.dataSource = self
        foodTableView.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        foodTableView.register(UINib(nibName: "FoodTableView", bundle: nil), forCellReuseIdentifier: "FoodCell")
    }
    
}
extension ViewController: UITableViewDataSource {
    // jumlah table berdasarkan array struct
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    // menampilkan cell nya sesuai array struct
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as? FoodTableView {
            let food = foods[indexPath.row]
            cell.nameFood.text = food.name
            cell.descriptionFood.text = food.description
            cell.photoFood.image = food.photo
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}
// user memilih table sesuai array dan berpindah ke detail view
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.food = foods[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
