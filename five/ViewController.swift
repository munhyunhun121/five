//
//  ViewController.swift
//  five
//
//  Created by 문현권 on 2023/01/13.
//

import UIKit

class ViewController: UIViewController {
    
 
    

    @IBAction func movebox1(_ sender: UIButton) {
        let Vc = storyboard?.instantiateViewController(identifier: "box1")
            navigationController?.pushViewController(Vc!, animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

