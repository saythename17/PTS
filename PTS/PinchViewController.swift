//
//  PinchViewController.swift
//  PTS
//
//  Created by 박시온 on 2022/09/01.
//

import UIKit

class PinchViewController: UIViewController {
    @IBOutlet var pinchText: UILabel!
//    @IBOutlet var pinchImage: UIImageView!
    
    var initialFontSize: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(PinchViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        if pinch.state == UIGestureRecognizer.State.began {
            initialFontSize = pinchText.font.pointSize
        } else {
            pinchText.font = pinchText.font.withSize(initialFontSize * pinch.scale)
        }
        
//        pinchImage.transform = pinchImage.transform.scaledBy(x: pinch.scale, y: pinch.scale)
//        pinch.scale = 1
    }

}
