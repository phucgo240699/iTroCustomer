//
//  DetailInvoiceDescriptionVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/8/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension InvoiceDescriptionViewController{
    
    func SetupConsumptionWater(_ consumptionWaterLbl: UILabel, _ consumptionWaterValue: UILabel){
    
        let width = view.frame.width
        
        // Label
        consumptionWaterLbl.translatesAutoresizingMaskIntoConstraints = false
          
        consumptionWaterLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        consumptionWaterLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        consumptionWaterLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        consumptionWaterLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        consumptionWaterLbl.text = "Consumption Water"
        consumptionWaterLbl.font = UIFont(name: consumptionWaterLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
          
        // Text Field
        consumptionWaterValue.translatesAutoresizingMaskIntoConstraints = false
          
        consumptionWaterValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        consumptionWaterValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
          
        consumptionWaterValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        consumptionWaterValue.topAnchor.constraint(equalTo: consumptionWaterLbl.topAnchor, constant: width*lblHeightScale).isActive = true
          
        consumptionWaterValue.text = "\(invoice?.consumptionWater ?? 0)"
        consumptionWaterValue.font = UIFont(name: consumptionWaterValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    func SetupConsumptionElectric(_ consumptionElectricLbl: UILabel, _ consumptionElectricValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        consumptionElectricLbl.translatesAutoresizingMaskIntoConstraints = false
        
        consumptionElectricLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        consumptionElectricLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        consumptionElectricLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        consumptionElectricLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        consumptionElectricLbl.text = "Consumption Electric"
        consumptionElectricLbl.font = UIFont(name: consumptionElectricLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        consumptionElectricValue.translatesAutoresizingMaskIntoConstraints = false
        
        consumptionElectricValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        consumptionElectricValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        consumptionElectricValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        consumptionElectricValue.topAnchor.constraint(equalTo: consumptionElectricLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        consumptionElectricValue.text = "\(invoice?.consumptionElectric ?? 0)"
        consumptionElectricLbl.font = UIFont(name: consumptionElectricLbl.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupWaterCost(_ waterCostLbl: UILabel, _ waterCostValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        waterCostLbl.translatesAutoresizingMaskIntoConstraints = false
        
        waterCostLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        waterCostLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        waterCostLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        waterCostLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        waterCostLbl.text = "Water Cost"
        waterCostLbl.font = UIFont(name: waterCostLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        waterCostValue.translatesAutoresizingMaskIntoConstraints = false
        
        waterCostValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        waterCostValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        waterCostValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        waterCostValue.topAnchor.constraint(equalTo: waterCostLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        waterCostValue.text = "\(invoice?.waterCost ?? 0)"
        waterCostValue.font = UIFont(name: waterCostValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupElectricCost(_ electricCostLbl: UILabel, _ electricCostValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        electricCostLbl.translatesAutoresizingMaskIntoConstraints = false
        
        electricCostLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        electricCostLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        electricCostLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        electricCostLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        electricCostLbl.text = "Electric Cost"
        electricCostLbl.font = UIFont(name: electricCostLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        electricCostValue.translatesAutoresizingMaskIntoConstraints = false
        
        electricCostValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        electricCostValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        electricCostValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        electricCostValue.topAnchor.constraint(equalTo: electricCostLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        electricCostValue.text = "\(invoice?.electricCost ?? 0)"
        electricCostValue.font = UIFont(name: electricCostLbl.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    func SetupInternetPrice(_ internetPriceLbl: UILabel, _ internetPriceValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        internetPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        
        internetPriceLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        internetPriceLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        internetPriceLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        internetPriceLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        internetPriceLbl.text = "Internet Price"
        internetPriceLbl.font = UIFont(name: internetPriceLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        internetPriceValue.translatesAutoresizingMaskIntoConstraints = false
        
        internetPriceValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        internetPriceValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        internetPriceValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        internetPriceValue.topAnchor.constraint(equalTo: internetPriceLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        internetPriceValue.text = "\(invoice?.internetPrice ?? 0)"
        internetPriceValue.font = UIFont(name: internetPriceValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupParkingPrice(_ parkingPriceLbl: UILabel, _ parkingPriceValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        parkingPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        
        parkingPriceLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        parkingPriceLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        parkingPriceLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        parkingPriceLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        parkingPriceLbl.text = "Parking Price"
        parkingPriceLbl.font = UIFont(name: parkingPriceLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        parkingPriceValue.translatesAutoresizingMaskIntoConstraints = false
        
        parkingPriceValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        parkingPriceValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        parkingPriceValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        parkingPriceValue.topAnchor.constraint(equalTo: parkingPriceLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        parkingPriceValue.text = "\(invoice?.parkingPrice ?? 0)"
        parkingPriceValue.font = UIFont(name: parkingPriceValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupCleanPrice(_ cleanPriceLbl: UILabel, _ cleanPriceValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        cleanPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        
        cleanPriceLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        cleanPriceLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        cleanPriceLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cleanPriceLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        cleanPriceLbl.text = "Clean Price"
        cleanPriceLbl.font = UIFont(name: cleanPriceLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        cleanPriceValue.translatesAutoresizingMaskIntoConstraints = false
        
        cleanPriceValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        cleanPriceValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        cleanPriceValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cleanPriceValue.topAnchor.constraint(equalTo: cleanPriceLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        cleanPriceValue.text = "\(invoice?.cleanPrice ?? 0)"
        cleanPriceValue.font = UIFont(name: cleanPriceValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupTotalPrice(_ totalPriceLbl: UILabel, _ totalPriceValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        totalPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        
        totalPriceLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        totalPriceLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        totalPriceLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        totalPriceLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        totalPriceLbl.text = "Total Price"
        totalPriceLbl.font = UIFont(name: totalPriceLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        totalPriceValue.translatesAutoresizingMaskIntoConstraints = false
        
        totalPriceValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        totalPriceValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        totalPriceValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        totalPriceValue.topAnchor.constraint(equalTo: totalPriceLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        totalPriceValue.text = "\(invoice?.totalPrice ?? 0)"
        totalPriceValue.font = UIFont(name: totalPriceValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
    
    
    func SetupCreatedAt(_ createdAtLbl: UILabel, _ createdAtValue: UILabel){
        
        let width = view.frame.width
        
        // Label
        createdAtLbl.translatesAutoresizingMaskIntoConstraints = false
        
        createdAtLbl.widthAnchor.constraint(equalToConstant: width).isActive = true
        createdAtLbl.heightAnchor.constraint(equalToConstant: width * lblHeightScale).isActive = true
        
        createdAtLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        createdAtLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: topSpace + spaceBetween * index + width * lblHeightScale * index + width * valueHeightScale * index ).isActive = true
        
        createdAtLbl.text = "Created at"
        createdAtLbl.font = UIFont(name: createdAtLbl.font?.fontName ?? "Helvetica Neue", size: width * lblHeightScale)
        
        // Text Field
        createdAtValue.translatesAutoresizingMaskIntoConstraints = false
        
        createdAtValue.widthAnchor.constraint(equalToConstant: width).isActive = true
        createdAtValue.heightAnchor.constraint(equalToConstant: width * valueHeightScale).isActive = true
        
        createdAtValue.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        createdAtValue.topAnchor.constraint(equalTo: createdAtLbl.topAnchor, constant: width*lblHeightScale).isActive = true
        
        createdAtValue.text = invoice?.createdAt
        createdAtValue.font = UIFont(name: createdAtValue.font?.fontName ?? "Helvetica Neue", size: width * valueHeightScale)

        index += 1
    }
}
