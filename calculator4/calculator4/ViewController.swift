//
//  ViewController.swift
//  calculator4
//
//  Created by student on 19.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var clear :Bool = false
    var number1 :Double = 0
    var number2 :Double = 0// s ekrana
    var operation :Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = ""
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if clear{
        label.text = String(sender.tag)
            clear = false
            
        } else {
            label.text = label.text! + String(sender.tag)
        }
        
        number2 = Double(label.text!)!
    }
    
    @IBAction func actions(_ sender: UIButton) {
        if (label.text != "" && sender.tag != 14 && sender.tag != 15){
            number1 = Double(label.text!)!
        
        if (sender.tag == 13){
            label.text = "+"
        }
        else if (sender.tag == 12){
            label.text = "-"
        }
        else if (sender.tag == 11){
            label.text = "*"
        }
        else if (sender.tag == 10){
            label.text = "/"
        }
            clear = true
            operation = sender.tag
    }
        else if (sender.tag == 14) {
            if (operation == 10) {
                label.text = String(number1 / number2)
            }
            else if (operation == 11) {
                label.text = String(number1 * number2)
            }
            else if (operation == 12) {
                label.text = String(number1 - number2)
            }
            else if (operation == 13) {
                label.text = String(number1 + number2)
            }
            clear = true
        }
        else if (sender.tag == 15) {
            label.text = ""
        }
}
}




