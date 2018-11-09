//
//  SecondViewController.swift
//  Test
//
//  Created by Denys Yurkovskyi on 11/9/18.
//  Copyright © 2018 Denys Yurkovskyi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userTypeFactorial: UITextField!
    @IBOutlet weak var showFactorial: UILabel!
    @IBOutlet weak var button: UIButton!
    var textField = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTypeFactorial.keyboardType = .numberPad
        userTypeFactorial.delegate = self
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters) == nil
    }
    
    @IBAction func pressFactorial(_ sender: Any) {
        // Here should be Guard!
        showFactorial.text = "\(factorial(number: Int(userTypeFactorial.text!)!))"
    }
    
    func factorial (number: Int) -> Int {
        var result = 1
        for value in 1...number {
            result *= value
        }
        return result
    }
    
    @IBAction func changeScreenBack(_ sender: Any) {
        performSegue(withIdentifier: "goToFirstScreen", sender: self)
    }
}
