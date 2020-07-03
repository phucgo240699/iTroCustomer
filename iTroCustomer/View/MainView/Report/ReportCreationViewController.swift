//
//  ReportCreationViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class ReportCreationViewController: UIViewController {

    var nameTxtField: UITextField?
    var descriptionTxtView: UITextView?
    var creationButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
        
        nameTxtField = UITextField()
        descriptionTxtView = UITextView()
        creationButton = UIButton()
        
        guard let nameTxtField = nameTxtField else {
            return
        }
        guard let descriptionTxtView = descriptionTxtView else {
            return
        }
        guard let creationButton = creationButton else {
            return
        }
        
        view.addSubview(nameTxtField)
        view.addSubview(descriptionTxtView)
        view.addSubview(creationButton)
        
        SetupNameTxtField(nameTxtField)
        SetupDescriptionTxtField(descriptionTxtView)
        SetupCreationButton(creationButton)
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
