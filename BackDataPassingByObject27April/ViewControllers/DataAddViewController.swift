//
//  DataAddViewController.swift
//  BackDataPassingByObject27April
//
//  Created by Mac on 27/04/23.
//

import UIKit

class DataAddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
   
    var delegate: BackDataPassing?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func dataSaveButton(_ sender: Any) {
        var nameStore = nameTextField.text
        var addressStore = addressTextField.text
        var ageStore = ageTextField.text
        var studentObject = Student(name: nameStore!, address: addressStore!, age: Int(ageStore!)!)
        guard let delegateSvc = delegate else {
            return
        }
        delegateSvc.backDataPass(student: studentObject )
        navigationController?.popToRootViewController(animated: true)
        
    }
    

}
