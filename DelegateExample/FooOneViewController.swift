//
//  FooOneViewController.swift
//  DelegateExample
//
//  Created by Steven Lipton on 2/13/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class FooOneViewController: UIViewController,FooTwoViewControllerDelegate {
    
    

    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destination as! FooTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }
    //MARK: - Delegates
    func didSelectColor(controller: FooTwoViewController, text: String) {
        colorLabel.text = "The Color is " + text
        switch text{
        case "Red":
            colorLabel.textColor = .red
        case "Blue":
            colorLabel.textColor = .blue
        case "Green":
            colorLabel.textColor = .green
        default:
            colorLabel.textColor  = .black
        }
        controller.navigationController?.popViewController(animated: true)
    }
}







