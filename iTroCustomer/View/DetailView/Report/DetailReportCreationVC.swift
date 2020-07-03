//
//  DetailReportCreationVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
extension ReportCreationViewController{
    func SetupNameTxtField(_ nameTF: UITextField){
        nameTF.translatesAutoresizingMaskIntoConstraints = false

        var width = view.frame.width * 0.7
        var height = width / 7
        
        if(UIDevice.current.userInterfaceIdiom == .pad){
            width = view.frame.width * 0.5
            height = width / 7
        }

        // Width, Height
        nameTF.widthAnchor.constraint(equalToConstant: width).isActive = true
        nameTF.heightAnchor.constraint(equalToConstant: height).isActive = true

        // X, Y
        nameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true

        // Others
        nameTF.backgroundColor = .white
        nameTF.textColor = .black
        nameTF.font = UIFont(name: nameTF.font?.fontName ?? "Helvetica Neue", size: height * 0.5)
        nameTF.layer.cornerRadius = height/2
        nameTF.textAlignment = .center
        nameTF.attributedPlaceholder = NSAttributedString(string: "Title...",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])

    }
    
    func SetupDescriptionTxtField(_ descriptionTV: UITextView){
        descriptionTV.translatesAutoresizingMaskIntoConstraints = false
        
        var width = view.frame.width * 0.7
        var height = width
        
        if(UIDevice.current.userInterfaceIdiom == .pad){
            width = view.frame.width * 0.5
            height = width
        }
        
        // Width, Height
        descriptionTV.widthAnchor.constraint(equalToConstant: width).isActive = true
        descriptionTV.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        // X, Y
        descriptionTV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionTV.topAnchor.constraint(equalTo: view.topAnchor, constant: 40 + (view.frame.width * 0.1)).isActive = true
        
        // Others
        descriptionTV.backgroundColor = .white
        descriptionTV.textColor = .black
        descriptionTV.font = UIFont(name: descriptionTV.font?.fontName ?? "Helvetica Neue", size: height / 14)
        descriptionTV.layer.cornerRadius = height/14
        descriptionTV.textAlignment = .center
//        descriptionTV.attributedPlaceholder = NSAttributedString(string: "Description...",
//        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
    }
    
    func SetupCreationButton(_ creationBtn: UIButton){
        creationBtn.translatesAutoresizingMaskIntoConstraints = false
        
        var width = view.frame.width * 0.3
        var height = width * 0.4
        
        if(UIDevice.current.userInterfaceIdiom == .pad){
            width = view.frame.width * 0.25
            height = width * 0.35
        }
        
        // Width, Height
        creationBtn.widthAnchor.constraint(equalToConstant: width).isActive = true
        creationBtn.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        // X, Y
        creationBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        creationBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 55 + (view.frame.width * 0.8)).isActive = true
        
        // Others
        creationBtn.backgroundColor = .orange
        creationBtn.tintColor = .white
        creationBtn.setTitle("Create", for: UIControl.State())
        creationBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: height / 2)
        creationBtn.layer.masksToBounds = true
        creationBtn.layer.cornerRadius = height / 2
        
        creationBtn.addTarget(self, action: #selector(ReportCreationViewController.CreationButtonAction(_:)), for: UIControl.Event.touchUpInside)
    }
    
    
}
