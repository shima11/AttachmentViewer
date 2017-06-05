//
//  AttachmentPageViewController.swift
//  KousakuViewer
//
//  Created by shima jinsei on 2017/01/14.
//  Copyright © 2017年 Jinsei Shima. All rights reserved.
//

import UIKit

class AttachmentPageViewController: UIPageViewController {

    var attachments: [Attachment] = [Attachment]()
    let curentPageIndex: Int = 0

    var controllers: [UIViewController] = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for attachment in attachments {

            if attachment.content_type.contains("image") {

                let viewcontroller = AttachmentImageViewController()
                controllers.append(viewcontroller)
            } else if attachment.content_type.contains("video") {

                let viewcontroller = AttachmentVideoViewController()
                controllers.append(viewcontroller)
            }
        }

        setViewControllers([controllers.first!], direction: .forward, animated: false, completion: nil)
    }
}

extension AttachmentPageViewController: UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        let viewController = AttachmentImageViewController()
        return viewController
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
//        guard let url = URL(string: attachments[0].thumbnail_url) else { return UIViewController() }
//        let imageViewController = ImageViewController(imageURL: url)
//        return imageViewController
        let viewController = AttachmentImageViewController()
        return viewController
    }
}

extension AttachmentPageViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        print("did finish animating")
    }
}
