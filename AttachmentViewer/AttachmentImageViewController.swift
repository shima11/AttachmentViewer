//
//  AttachmentImageViewController.swift
//  KousakuViewer
//
//  Created by shima jinsei on 2017/01/14.
//  Copyright © 2017年 Jinsei Shima. All rights reserved.
//

import UIKit

class AttachmentImageViewController: UIViewController {

    var attachment: Attachment!
    let imageView: UIImageView = UIImageView()
    
    var pageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = UIColor.black
        
        imageView.contentMode = .center
//        let url = URL(string: attachment.url)
//        imageView.kf.setImage(with: url)
        
        view.addSubview(imageView)
    
    }


}
