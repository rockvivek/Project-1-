//
//  DetailedViewController.swift
//  GoodsAndOldProduct
//
//  Created by vivek shrivastwa on 06/05/21.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    
    var name:String?
    var image:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let img = image, let product = name  else { return }
        print(image)
        productImage.image = UIImage(named: "\(img)")
        productName.text = product\
    }
    @IBAction func addToCart(_ sender: UIButton) {
        print("item added to cart")
    }
}
