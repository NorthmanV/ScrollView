//
//  ViewController.swift
//  ScrollView
//
//  Created by Руслан Акберов on 10.09.17.
//  Copyright © 2017 Руслан Акберов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        print("Scroll width: \(scrollView.frame.size.width)")
        let scrollViewWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            contentWidth += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth - scrollViewWidth * 1.5, height: view.frame.size.height)
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

