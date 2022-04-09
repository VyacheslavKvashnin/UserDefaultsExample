//
//  ListTableViewController.swift
//  UserDefaultsExample
//
//  Created by Вячеслав Квашнин on 09.04.2022.
//

import UIKit

protocol ListViewControllerDelegate {
    func saveContact(_ contact: String)
}

class ListTableViewController: UITableViewController {
    
    private var contacts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addingVC = segue.destination as! AddingViewController
        addingVC.delegate = self
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFullName", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact
        
        cell.contentConfiguration = content
        
        return cell
    }
}

extension ListTableViewController: ListViewControllerDelegate {
    func saveContact(_ contact: String) {
        contacts.append(contact)
        tableView.reloadData()
    }
}
