//
//  PhoneButtonView.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 19/12/2563 BE.
//  Copyright © 2563 chayapam suesawatwanich. All rights reserved.
//

import UIKit

class PhoneButtonView: UIView {

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var buttonElement: UIButton!
    @IBOutlet weak var textAlphabet: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
         Drawing code
    }
    */
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //init on fantasy bind
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //init in the code
    }
    
    func loadView() {
        let bundle = Bundle(for: PhoneButtonView.self)
        bundle.loadNibNamed(String(describing: PhoneButtonView.self), owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
    }
    
    func setButtonText(text: String) {
        textAlphabet.text = text
    }
    
}
