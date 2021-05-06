//
//  productTableViewCell.swift
//  GoodsAndOldProduct
//
//  Created by vivek shrivastwa on 06/05/21.
//

import UIKit

class productTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    
    static let identifier = "productTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() -> UINib {
        return UINib(nibName: "productTableViewCell", bundle: nil)
    }
    
    public func configure(with model: Model){
        self.productName.text = model.productName
        self.productImage.image = UIImage(named: model.productImage)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
