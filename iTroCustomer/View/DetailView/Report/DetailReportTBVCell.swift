//
//  DetailReportTBCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/2/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension ReportTableViewCell{
    func SetupContainer(_ container: UIView){
        
        let width = self.frame.width
        let height = self.frame.height
        
        container.translatesAutoresizingMaskIntoConstraints = false
        
        container.widthAnchor.constraint(equalToConstant: width * 0.9).isActive = true
        container.heightAnchor.constraint(equalToConstant: height * 0.8).isActive = true
        
        container.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        container.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        container.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == .pad ? 30 : 15
        
    }
    
    func SetupNameReport(_ name: UILabel, _ container: UIView){
        name.translatesAutoresizingMaskIntoConstraints = false
        
        // Widthl, Height
        let width = self.frame.width
        let height = self.frame.height
        name.widthAnchor.constraint(equalToConstant: width * 0.9 * 0.8).isActive = true
        name.heightAnchor.constraint(equalToConstant: height * 0.8 * 0.2).isActive = true
        
        // X, Y
        name.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        name.topAnchor.constraint(equalTo: container.topAnchor, constant: self.frame.height * 0.05).isActive = true
        
        // Others
        name.backgroundColor = .white
        name.textColor = .black
        name.font = UIFont(name: name.font?.fontName ?? "Helvetica Neue", size: height * 0.1)
        name.layer.cornerRadius = height / 12
        name.layer.masksToBounds = true
        name.textAlignment = .center
        
    }
    
    func SetupDescriptionReport(_ description: UITextView, _ container: UIView){
        description.translatesAutoresizingMaskIntoConstraints = false
        
        // Widthl, Height
        let width = self.frame.width
        let height = self.frame.height
        description.widthAnchor.constraint(equalToConstant: width * 0.9 * 0.8).isActive = true
        description.heightAnchor.constraint(equalToConstant: height * 0.8 * 0.67).isActive = true
        
        // X, Y
        description.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        description.topAnchor.constraint(equalTo: container.topAnchor, constant: self.frame.height * 0.25).isActive = true
        
        // Others
        description.backgroundColor = .white
        description.textColor = .black
        description.layer.cornerRadius = height/10
        description.layer.masksToBounds = true
        if(UIDevice.current.userInterfaceIdiom == .pad){
            description.font = UIFont(name: description.font?.fontName ?? "Helvetica Neue", size: height * 0.07)
        }
        description.font = UIFont(name: description.font?.fontName ?? "Helvetica Neue", size: height * 0.07)
    }
}
