//
//  ViewController2.swift
//  nar
//
//  Created by McM on 01/11/2016.
//  Copyright © 2016 McM. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.handleSwipes(_:)))
        
        let swipeUP = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes(_:)))
        
        let swipeDOWN = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes(_:)))
        
        
        swipeUP.direction = UISwipeGestureRecognizerDirection.up
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        swipeDOWN.direction = UISwipeGestureRecognizerDirection.down
        
        view.addGestureRecognizer(swipeUP)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(swipeDOWN)
        
        //let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        //view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipes(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                self.performSegue(withIdentifier: "gobus", sender: self)
                print("Swiped down")
            
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
                
            default:
                break
            }
        }
            }
    
}
