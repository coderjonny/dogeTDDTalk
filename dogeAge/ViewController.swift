//
//  ViewController.swift
//  dogeAge
//
//  Created by jonny on 9/23/14.
//  Copyright (c) 2014 jonny kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myDoge = Doge()
    
    @IBOutlet var inputAge: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func pressedAge(sender: AnyObject) {
        println("I pressed it! <3 ")
        var age = inputAge.text.toInt()

        if age > 0 {
            var dogeAge = myDoge.dogeAge(age!)
            answer.text = dogeAge
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
