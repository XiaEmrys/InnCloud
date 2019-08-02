//
//  UIViewController+DismissKeyboard.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

extension UIViewController {
    func setupForDismissKeyboard() {
        
        let singleTapGR = UITapGestureRecognizer(target: self, action: #selector(self.tapAnywhereToDismissKeyboard(_:)))
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: OperationQueue.main) { (notification) in
            self.view.addGestureRecognizer(singleTapGR)
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: OperationQueue.main) { (notification) in
            self.view.removeGestureRecognizer(singleTapGR)
        }
    }
    
    @objc func tapAnywhereToDismissKeyboard(_: UIGestureRecognizer) {
        view.endEditing(true)
    }
}
