//
//  ViewController.swift
//  Week3_homework
//
//  Created by kong on 2020/11/01.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var navibar: UIView!
    var collectionView : UICollectionView?
    
    @IBOutlet weak var profilebtn: UIButton!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        profilebtn.layer.cornerRadius = 10
        
        let layout = UICollectionViewFlowLayout()
         
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 96, left: 10, bottom: 5, right: 10)
        layout.itemSize = CGSize(width: view.frame.size.width/2.2, height: view.frame.size.width/1.5)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView?.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        
        collectionView?.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .white

        view.addSubview(collectionView!)

    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView?.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath)
        
        return cell
}
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        header.configure()
        return header
}
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 400)
    }
    
    
}
