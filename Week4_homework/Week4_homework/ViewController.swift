//
//  ViewController.swift
//  Week3_homework2
//
//  Created by kong on 2020/11/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ProfileBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var naviBar: UIView!
    
    let horizonInset: CGFloat = 24.0
    let topInset: CGFloat = 35.0
    let bottomInset: CGFloat = 50
    
    let itemspacing: CGFloat = 27.0
    let linespacing: CGFloat = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfileBtn.layer.cornerRadius = 10
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}
    



extension ViewController : UICollectionViewDataSource {
    //섹션 나눔
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //섹션안에 몇개 들어갈지
        if section == 0{
            return 1
        }
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCell", for: indexPath)
            return cell
            
            //옵셔널 바인딩 안해도 된당
            
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath)
        return cell
        
    }
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    //셀의 크기 지정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenHeight =
            
            //바운드는 자기 자신의 좌표계
            //프레임은 부모뷰 기준 자신의 좌표계
            UIScreen.main.bounds.height
        
        if indexPath.section == 0 {
            //높이는 비율로 지정하자
            
            let cellHeight = 420 / 896 * screenHeight
            
            //화면 크기에 대응해서 지정, 뷰 프레임이랑 딱 맞게!!!
            
            return CGSize(width: collectionView.frame.width, height: cellHeight)
        }
        
        let cellWidth = (collectionView.frame.width - horizonInset * 2 - itemspacing) / 2
        let cellHeight = 225 / 896 * screenHeight
        
        return CGSize(width: cellWidth, height: cellHeight)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return itemspacing
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return linespacing
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            
        }
        
        return UIEdgeInsets(top: topInset, left: horizonInset, bottom: bottomInset, right: horizonInset)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if(velocity.y>0) {

            UIView.animate(withDuration: 2.5, delay: 0, options: UIView.AnimationOptions(), animations: {self.navigationController?.setNavigationBarHidden(true, animated: true)}, completion: nil)}
        
        else {UIView.animate(withDuration: 2.5, delay: 0, options: UIView.AnimationOptions(), animations: {self.navigationController?.setNavigationBarHidden(false, animated: true)}, completion: nil)
            
            }
        }
        /*스크롤 시 네비 바 조정*/
    
}

