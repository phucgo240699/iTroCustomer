//
//  DetailSettingTBVCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/6/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension SettingTableViewCell{
    func SetupSettingThumbnail(_ thumbnail: UIImageView) {
        thumbnail.translatesAutoresizingMaskIntoConstraints = false
        
        // Width, Height
        //let width = self.frame.width
        let height = self.frame.height
        
        thumbnail.widthAnchor.constraint(equalToConstant: height * 0.8).isActive = true
        thumbnail.heightAnchor.constraint(equalToConstant: height * 0.8).isActive = true
        
        // X, Y
        thumbnail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        thumbnail.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        thumbnail.sizeToFit()
        thumbnail.layer.cornerRadius = height / 6
        thumbnail.layer.masksToBounds = true
        
    }
    
    func SetupSettingName(_ name: UILabel){
        name.translatesAutoresizingMaskIntoConstraints = false
        
        // Width, Height
        let width = self.frame.width
        let height = self.frame.height
        name.backgroundColor = .green
        name.widthAnchor.constraint(equalToConstant: (width - height * 0.8 - 15)).isActive = true
        name.heightAnchor.constraint(equalToConstant: height * 0.5).isActive = true
        
        // X, Y
        name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10 + height * 0.8).isActive = true
        name.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        // Others
        name.backgroundColor = .white
        name.textColor = .black
        name.font = UIFont(name: name.font?.fontName ?? "Helvetica Neue", size: height * 0.4)
        name.layer.cornerRadius = height / 4
        name.layer.masksToBounds = true
        name.textAlignment = .center
        
    }
    
    
    
}
