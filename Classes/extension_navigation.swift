//
//  extension_navigation.swift
//  Booom
//
//  Created by TT on 2017/1/7.
//  Copyright © 2017年 TT. All rights reserved.
//

import Foundation


protocol UINavigationAnimationInterface: NSObjectProtocol {
    
    func iNavigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}

extension UINavigationController {
    
    static var e_NavVC: UINavigationController? {
        
        get {
            
            return UIApplication.shared.keyWindow?.rootViewController as? UINavigationController
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if let aObjectWithAProtocol = fromVC as? BOMNavigationAnimationInterface {
            
            return aObjectWithAProtocol.iNavigationController(navigationController, animationControllerFor: operation, from: fromVC, to: toVC)
        }
        
        return nil
    }
}
