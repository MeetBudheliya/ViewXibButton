//
//  ViewController.swift
//  ViewXibButton
//
//  Created by Adsum MAC 1 on 17/06/21.
//

import UIKit

class ViewController: UIViewController {

    var isTapped = false
    let v = XIBView()
    override func viewDidLoad() {
        super.viewDidLoad()
        v.frame = (self.navigationController?.navigationBar.bounds)!
        self.navigationController?.navigationBar.addSubview(v)
        v.tapBTN.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }

    @objc func tapped(){
        print("Tapped")
        if isTapped{
            self.view.backgroundColor = .red
            isTapped = false
        }else{
            self.view.backgroundColor = .yellow
            isTapped = true
        }
    }
}

