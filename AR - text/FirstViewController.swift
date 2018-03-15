//
//  FirstViewController.swift
//  AR - text
//
//  Created by Roman Slezenko on 15.03.18.
//  Copyright © 2018 Roman Slezenko. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var mytext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewcontroller = segue.destination as! ViewController
        viewcontroller.myString = mytext.text!
    }
    
    @IBAction func press(_ sender: Any) {
        
        if mytext.text != "" {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    

}
