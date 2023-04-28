//
//  ViewController.swift
//  BackDataPassingByObject27April
//
//  Created by Mac on 27/04/23.
//

import UIKit

class DataShowViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!
    
    @IBOutlet weak var ageLbl: UILabel!
    
    //var students:[Student] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func addDataButton(_ sender: Any) {
        let dataAddVC = storyboard?.instantiateViewController(withIdentifier: "DataAddViewController") as! DataAddViewController
        dataAddVC.delegate = self
        navigationController?.pushViewController(dataAddVC, animated: true)
        }
}

extension DataShowViewController: BackDataPassing {
    func backDataPass(student: Student) {
        nameLbl.text = student.name
        addressLbl.text = student.address
        ageLbl.text = student.age.description
    }
    
    
}
