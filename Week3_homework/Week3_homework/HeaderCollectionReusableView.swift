//
//  HeaderCollectionReusableView.swift
//  Week3_homework
//
//  Created by kong on 2020/11/06.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "HeaderCollectionReusableView"
    
    let imageview: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "banner"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "SOPT + NETWORKING"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    public func configure(){
        backgroundColor = .systemGreen
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageview)
    }
    
    required init?(coder: NSCoder) {
        fatalError("어렵다")
    }
}
