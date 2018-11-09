//
//  ViewController.swift
//  Test
//
//  Created by Denys Yurkovskyi on 11/8/18.
//  Copyright © 2018 Denys Yurkovskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let array: [Int] = [1,2,3,8,6,3,8,11,17,29,8,3,12,16,6]
    var textField = ""
    @IBOutlet weak var label1: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        textField = "\(showResult()!)"
        label1.text = textField
    }
    
    func showResult () -> String! {
        var firstSet = Set<Int>()
        var secondSet = Set<Int>()
        for value in array {
            if !firstSet.contains(value) {
                firstSet.insert(value)
            } else {
                secondSet.insert(value)
            }
        }
        let setArray = Array(secondSet)
        let outputlString = setArray.map{String($0)}
        let joinedArray = outputlString.joined(separator: "; ")
            if joinedArray.isEmpty {
        return "0"
            } else {
        return joinedArray
        }
    }
    
    @IBAction func chengeScreen(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
}

