//
//  FavViewController.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 3/1/2564 BE.
//  Copyright © 2564 chayapam suesawatwanich. All rights reserved.
//

import UIKit

class FavViewController: UIViewController {

    @IBOutlet weak var editBt: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var favorites = ["Jenn","David","Stephanie","Jeff","Valerie","Mike","Laura"]
    var editFlag = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    */
    }
    var editPressed = false
        
    func editEnable() {
        editPressed = true
        editBt.setTitle("Done", for: .normal)
    }
    
    func editDisable() {
        editPressed = false
        editBt.setTitle("Edit", for: .normal)
        
    }


    @IBAction func onAllowEdit(_ sender: UIButton) {
        if (editPressed == false) {
        tableView.setEditing(true, animated: true)

            editEnable()
        }
        else {
        tableView.setEditing(false, animated: false)
        
           editDisable()
        }
    }
    @IBAction func onAddingItem(_ sender: UIButton!) {
        favorites.append("James Cena")
        tableView.reloadData()
    }
}

extension FavViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "favCell1", for: indexPath) as! FavTableViewCell
        cell.favName!.text = favorites[index]
        cell.contactType!.text = "Mobile"
        cell.editableBt.isHidden = true
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if tableView.isEditing {
            return .delete
        }
        else {
            return .none
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            favorites.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.endUpdates()
        }
        
    }
    
    

}
