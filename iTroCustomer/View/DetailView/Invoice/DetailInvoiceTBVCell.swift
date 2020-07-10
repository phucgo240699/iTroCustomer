//
//  DetailInvoiceTBVCell.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/9/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension InvoiceTableViewCell{
    func SetupContainer(isPad: Bool){
        let width = self.frame.width
        let height = self.frame.height
        
print(width)
        print(height)
        // Initialize
        container = UIView()
        guard let container = container else { return }
        
        if(isPad){
            container.frame = CGRect(x: width * 0.05, y: height * 0.08, width: width * 0.9, height: height * 0.9)
            
        } else{
            container.frame = CGRect(x: width * 0.05, y: height * 0.08, width: width * 0.84, height: height * 0.84)
        }
        
//        container.backgroundColor = UIColor(red: 255/255, green: 71/255, blue: 26/255, alpha: 0.8)
        
        container.layer.cornerRadius = container.frame.height * 0.2
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 0.5
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = container.frame.height * 0.05
        
        self.addSubview(container)
    }
    
    func SetupRoomNameLbl(isPad: Bool){
        roomNameLbl = UILabel()
        guard let roomNameLbl = roomNameLbl else {
            return
        }
        
        guard let container = container else { return }
        
        if(isPad){
            roomNameLbl.frame = CGRect(x: (container.frame.origin.x + container.frame.width * 0.05) , y: (container.frame.origin.y + container.frame.height * 0.1) , width: container.frame.width * 0.9, height: container.frame.height * 0.2)
            
        } else{
            roomNameLbl.frame = CGRect(x: (container.frame.origin.x + container.frame.width * 0.05) , y: (container.frame.origin.y + container.frame.height * 0.1) , width: container.frame.width * 0.9, height: container.frame.height * 0.2)
        }
        
        roomNameLbl.font = UIFont(name: roomNameLbl.font?.fontName ?? "Helvetica Neue", size: roomNameLbl.frame.height)
        
        
        self.addSubview(roomNameLbl)
    }
    
    func SetupTotalPriceLbl(isPad: Bool){
        totalPriceLbl = UILabel()
        guard let totalPriceLbl = totalPriceLbl else {
            return
        }
        
        guard let roomNameLbl = roomNameLbl else {
            return
        }
        
        guard let container = container else { return }
        
        if(isPad){
            totalPriceLbl.frame = CGRect(x: (container.frame.origin.x + container.frame.width * 0.05) , y: (roomNameLbl.frame.origin.y + container.frame.height * 0.3) , width: container.frame.width * 0.9, height: container.frame.height * 0.5)
            
        } else{
            totalPriceLbl.frame = CGRect(x: (container.frame.origin.x + container.frame.width * 0.05) , y: (roomNameLbl.frame.origin.y + container.frame.height * 0.3) , width: container.frame.width * 0.9, height: container.frame.height * 0.5)
        }
        
        totalPriceLbl.font = UIFont(name: totalPriceLbl.font?.fontName ?? "Helvetica Neue", size: totalPriceLbl.frame.height * 0.8)
        
        
        self.addSubview(totalPriceLbl)
    }

    func SetupThumnail(isPad: Bool){
        
    }

    func SetupCell(isPad: Bool, width: CGFloat, height: CGFloat){
        self.frame = CGRect(x: 0, y: 0, width: width, height: height)

        SetupContainer(isPad: isPad)
        SetupRoomNameLbl(isPad: isPad)
        SetupTotalPriceLbl(isPad: isPad)
        SetupThumnail(isPad: isPad)
    }
}
