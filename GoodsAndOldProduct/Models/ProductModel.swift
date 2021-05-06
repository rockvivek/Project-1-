//
//  ProductModel.swift
//  GoodsAndOldProduct
//
//  Created by vivek shrivastwa on 06/05/21.
//

import Foundation

struct Model {
    var productName: String
    var productImage: String
    
    init(productName:String, productImage:String){
        self.productName = productName
        self.productImage = productImage
    }
}

var models = [Model]()
