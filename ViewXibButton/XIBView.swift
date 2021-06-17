//
//  XIBView.swift
//  ViewXibButton
//
//  Created by Adsum MAC 1 on 17/06/21.
//

import UIKit

class XIBView: UIView {

    @IBOutlet var navView: UIView!
    @IBOutlet weak var tapBTN: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        CommenInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        CommenInit()
    }
    private func CommenInit(){
            Bundle.main.loadNibNamed("XIBView", owner: self, options: nil)
            addSubview(navView)
            navView.frame = self.bounds
            navView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
//            counternotification.layer.cornerRadius = counternotification.layer.bounds.height/2
//            counternotification.clipsToBounds = true
//            
//            messagecounter.layer.cornerRadius = messagecounter.layer.bounds.height/2
//            messagecounter.clipsToBounds = true
            
        }

}
