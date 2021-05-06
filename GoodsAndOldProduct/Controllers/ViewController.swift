//
//  ViewController.swift
//  GoodsAndOldProduct
//
//  Created by vivek shrivastwa on 06/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var productTableView: UITableView!
    
    var fullImage = ["phone-fullscreen1","phone-fullscreen2","phone-fullscreen3","phone-fullscreen4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productTableView.delegate = self
        productTableView.dataSource = self
        
        models.append(Model(productName: "product1", productImage: "image-cell1"))
        models.append(Model(productName: "product2", productImage: "image-cell2"))
        models.append(Model(productName: "product3", productImage: "image-cell3"))
        models.append(Model(productName: "product4", productImage: "image-cell4"))
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: productTableViewCell.identifier, for: indexPath) as! productTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailedViewController") as! DetailedViewController
        vc.name = models[indexPath.row].productName
        vc.image = self.fullImage[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

