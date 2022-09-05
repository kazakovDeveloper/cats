//
//  ViewController.swift
//  UIImageview
//
//  Created by Kazakov Danil on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 20
        imageView.layer.borderWidth = 5
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
//        let image = UIImage(named: "1561ff1b279d8963c6c4ba39ad3329f8")
//        let image = UIImage(systemName: "folder")
//        let imageUrl = URL(string: "https://clck.ru/xvujg")!
//        let data = try! Data(contentsOf: imageUrl)
//        let image = UIImage(data: data)
        
        
//        let image = UIImage.animatedImage(with: [UIImage(named:"1561ff1b279d8963c6c4ba39ad3329f8")!, UIImage(named: "Без названия")!], duration: 12)
        
        imageView.animationDuration = 12
        imageView.animationImages = [UIImage(named:"1561ff1b279d8963c6c4ba39ad3329f8")!, UIImage(named: "Без названия")!]
        imageView.startAnimating()
        animation()
        
        
//        imageView.image = image
        
    }
    func animation() {
        UIView.animate(withDuration: 2, delay: 2, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
            self.imageView.alpha = 0
        })
    }

}

