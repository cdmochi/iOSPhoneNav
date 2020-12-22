//
//  PhoneViewController.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 21/12/2563 BE.
//  Copyright © 2563 chayapam suesawatwanich. All rights reserved.
//

import UIKit


extension String {
    subscript (characterIndex: Int) -> Character {
        return self[index(startIndex, offsetBy: characterIndex)]
    }
}

class PhoneViewController: UIViewController {
    
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var displayLable: UILabel!
    @IBOutlet weak var displayAddContact: UIButton!
    
    var isFormated = false
    var isDeletedFormated = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hideButtons()
    }
    
    @IBAction func onClickNumber(_ sender: Any) {
        
        //tag added as integer to differentiate the UIButton instance.
        let tag = (sender as! UIButton).tag

        //add the number based on clicked button
        displayLable.text = displayLable.text! + String(tag)
        applyPhoneNumberFormat()
        showButtons()
    }

    private func applyPhoneNumberFormat() {
        //if the third character is entered then add - to match the phone format.
        if (displayLable.text?.count == 3) {
            displayLable.text!
                .insert(
                    contentsOf: "-",
                    at: (displayLable.text?.index(displayLable.text!.startIndex, offsetBy: 3))!
            )
        }
        else if (displayLable.text?.count == 7) {
            displayLable.text!.insert(contentsOf: "-", at: (displayLable.text?.index(displayLable.text!.startIndex, offsetBy: 7))!)
        }
        else if (displayLable.text?.count == 13 && !isFormated) {
            let firstDashI = displayLable.text!.index(displayLable.text!.startIndex,offsetBy: 3)
            let secondDashI = displayLable.text!.index(displayLable.text!.startIndex,offsetBy: 6)
            displayLable.text!.remove(at: firstDashI)
            displayLable.text!.remove(at: secondDashI)
            isFormated = true
            isDeletedFormated = false
            
        }
    }
    
    @IBAction func onDeleteNumber(_ send :Any) {
        
        //if display is not empty allow to delete && show the Buttons
        if (!displayLable.text!.isEmpty) {
            displayLable.text!.removeLast()
            showButtons()
        }
        //if the #displayUI is empty
        if (displayLable.text!.isEmpty) {
            hideButtons()
        }
        
        if (displayLable.text!.count == 10 && !isDeletedFormated) {
            let firstDashI = displayLable.text!.index(displayLable.text!.startIndex,offsetBy: 3)
            let secondDashI = displayLable.text!.index(displayLable.text!.startIndex,offsetBy: 7)
            displayLable.text!.insert("-",at: firstDashI)
            displayLable.text!.insert("-",at: secondDashI)
            isFormated = false
            isDeletedFormated = true
        }
        
        
        //"000-111-1111"  <-- phone format
        //"000-111-11111"  <-- exceed format
        
    }

    @IBAction func onClickSymbols(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        showButtons()
        //is * -> 10
        //is # -> 12
        if (tag == 10) {
            displayLable.text = displayLable.text! + "*"
        }
        else if (tag == 12) {
            displayLable.text = displayLable.text! + "#"
        }
        
    }
    
    private func showButtons() {
        deleteButton.isHidden = false
        displayAddContact.isHidden = false
    }
    
    private func hideButtons() {
        deleteButton.isHidden = true
        displayAddContact.isHidden = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
