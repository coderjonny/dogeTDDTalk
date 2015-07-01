//
//  ViewController.swift
//  dogeAge
//
//  Created by jonny on 9/23/14.
//  Copyright (c) 2014 jonny kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var myDoge = Doge()
    
    @IBOutlet var inputAge: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func pressedAge(sender: AnyObject) {
        print("I pressed it! <3 ")
        let age = Int(inputAge.text!)

        if age > 0 {
            let dogeAge = myDoge.dogeAge(age!)
            answer.text = dogeAge
            
            self.view.endEditing(true)
            
        } else {
            answer.text = "Please put in an age"
        }
    }

    @IBAction func pressedDoge(sender: AnyObject) {
        answer.text = myDoge.bark()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputAge.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
