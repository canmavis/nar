//
//  ViewController.swift
//  nar
//
//  Created by McM on 31/10/2016.
//  Copyright © 2016 McM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
        
        let swipeUP = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipes(_:)))
        
        
        swipeUP.direction = UISwipeGestureRecognizerDirection.up
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(swipeUP)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
      //  view.addGestureRecognizer(downSwipe)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
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
               
                print("Swiped down")
            
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
                
            case UISwipeGestureRecognizerDirection.up:
                self.performSegue(withIdentifier: "gouser", sender: self)
                
                print("Swiped up")
                
                
            default:
                break
            }
        }
    }
    func dismissKeyboard(){
        print("tıklandı")
        
    }

}

