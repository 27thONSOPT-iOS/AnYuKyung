//
//  CollectionViewCell.swift
//  Week3_homework
//
//  Created by kong on 2020/11/06.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nidname: "CollectionViewCell", bundle: nil)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backg
    }

}
