//
//  FooTwoViewController.swift
//  DelegateExample
//
//  Created by Steven Lipton on 2/13/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit
protocol FooTwoViewControllerDelegate{
    func didSelectColor(controller:FooTwoViewController,text:String)
}

class FooTwoViewController: UIViewController {
    var colorString = "I don't know the color"
    var delegate:FooTwoViewControllerDelegate! = nil
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func saveColor(_ sender: Any) {
        guard let delegate = self.delegate else {
            print("Delegate for FooTwoDelegateController not set")
            return
        }
        delegate.didSelectColor(controller: self, text: colorString)
    }
    
    @IBAction func colorSelectionButton(_ sender: UIButton) {
        colorString = (sender.titleLabel?.text)!
        colorLabel.text = colorString
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colorString
    }

}
