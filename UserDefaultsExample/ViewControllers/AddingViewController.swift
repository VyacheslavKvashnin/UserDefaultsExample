//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by Вячеслав Квашнин on 09.04.2022.
//

import UIKit

class AddingViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    
    var delegate: ListViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addPressedButton(_ sender: UIButton) {
        saveText()
        dismiss(animated: true)
    }
    
    private func saveText() {
        guard let name = nameLabel.text else { return }
        guard let lastName = lastNameLabel.text else { return }
        delegate.saveContact("\(name) \(lastName)")
    }
}
