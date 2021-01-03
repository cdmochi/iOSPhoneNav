//
//  ContactsViewController.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 28/12/2563 BE.
//  Copyright © 2563 chayapam suesawatwanich. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    var names = ["CHAYAPAM SUESAWATWANICH","A","Apple Inc","Anna Bell","B","Bell","Balloon","C","Calliope"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
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

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let defaultCell = UITableViewCell(style: .default, reuseIdentifier: "")
        

        let index = indexPath.row
        switch (index) {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? UserViewCell {
                cell.ownerName.text = names[index]
                return cell
            }
        case 1:
            defaultCell.textLabel!.text = names[index]
            defaultCell.backgroundColor = UIColor.lightGray
            return defaultCell
        case 4:
            defaultCell.textLabel!.text = names[index]
            defaultCell.backgroundColor = UIColor.lightGray
            return defaultCell
        case 7:
            defaultCell.textLabel!.text = names[index]
            defaultCell.backgroundColor = UIColor.lightGray
            return defaultCell
        default:
            defaultCell.textLabel!.text = names[index]
            return defaultCell
        }
        
        return defaultCell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.row
        
        switch(index) {
        case 0:
            return 80.0
        case 1:
            return 25.0
        case 4:
            return 25.0
        case 7:
            return 25.0
        default:
            return 50.0
        }
    }
    
    
}
