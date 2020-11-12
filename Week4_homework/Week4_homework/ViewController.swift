//
//  ViewController.swift
//  Week3_homework2
//
//  Created by kong on 2020/11/07.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var ProfileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfileBtn.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as? myCollectionViewCell else {
                    return UICollectionViewCell()
                }
                
                cell.imageView.image = members[indexPath.row].image
                cell.namelab.text = members[indexPath.row].name
                cell.detailLabel.text = members[indexPath.row].detail
                
                return cell
            }
    }
    

}

