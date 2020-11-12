//
//  myCollectionViewCell.swift
//  Week3_homework2
//
//  Created by kong on 2020/11/07.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "myCollectionViewCell"
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var namelab: UILabel!
    @IBOutlet weak var detaillab: UILabel!
    
    
    static func nib() -> UINib {
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
