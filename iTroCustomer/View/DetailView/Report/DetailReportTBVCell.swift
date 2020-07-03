//
//  DetailReportTBCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/2/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension ReportTableViewCell{
    func SetupNameReport(_ name: UILabel){
        name.translatesAutoresizingMaskIntoConstraints = false
        
        // Widthl, Height
        let width = self.frame.width
        let height = self.frame.height * 0.2
        name.widthAnchor.constraint(equalToConstant: width).isActive = true
        name.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        // X, Y
        name.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        name.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height * 0.05).isActive = true
        
        // Others
        name.backgroundColor = .white
        name.textColor = .black
        name.font = UIFont(name: name.font?.fontName ?? "Helvetica Neue", size: height * 0.8)
        name.layer.cornerRadius = height / 4
        name.layer.masksToBounds = true
        name.textAlignment = .center
        
    }
    
    func SetupDescriptionReport(_ description: UITextView){
        description.translatesAutoresizingMaskIntoConstraints = false
        
        // Widthl, Height
        let width = self.frame.width
        let height = self.frame.height * 0.67
        description.widthAnchor.constraint(equalToConstant: width).isActive = true
        description.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        // X, Y
        description.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        description.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height * 0.3).isActive = true
        
        // Others
        description.backgroundColor = .white
        description.textColor = .black
        description.layer.cornerRadius = height/10
        description.layer.masksToBounds = true
        if(UIDevice.current.userInterfaceIdiom == .pad){
            description.font = UIFont(name: description.font?.fontName ?? "Helvetica Neue", size: height * 0.15)
        }
        description.font = UIFont(name: description.font?.fontName ?? "Helvetica Neue", size: height * 0.1)
    }
}
