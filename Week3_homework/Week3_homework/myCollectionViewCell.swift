//
//  myCollectionViewCell.swift
//  Week3_homework
//
//  Created by kong on 2020/11/06.
//

import UIKit

class myCollectionViewCell:
    UICollectionViewCell {
    
    static let identifier = "myCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .white
    }

}

