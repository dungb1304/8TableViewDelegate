//
//  ViewController.swift
//  8TableViewDelegate
//
//  Created by DungB96 on 2018/06/13.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

protocol Delegate {
    func sendData(delData : String)
}

class ViewController: UIViewController {

    var data : String?
    @IBOutlet weak var textField: UITextField!
    var delegate : Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if data != nil {
            textField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendData(_ sender: Any) {
        if delegate != nil {
            if textField.text != nil {
                let text = textField.text
                delegate?.sendData(delData: text!)
                navigationController?.popViewController(animated: true)
            }
        }
        
    }
    
}

