//
//  DetailInvoiceViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/27/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class InvoiceDescriptionViewController: UIViewController {

    var invoice: InvoiceDescriptionElement?
    
    var consumptionElectricLbl: UILabel?
    var consumptionElectricValue: UILabel?
    
    var consumptionWaterLbl: UILabel?
    var consumptionWaterValue: UILabel?
    
    var waterCostLbl: UILabel?
    var waterCostValue: UILabel?
    
    var electricCostLbl: UILabel?
    var electricCostValue: UILabel?
    
    var waterPriceLbl: UILabel?
    var waterPriceValue: UILabel?
    
    var electricPriceLbl: UILabel?
    var electricPriceValue: UILabel?
    
    var internetPriceLbl: UILabel?
    var internetPriceValue: UILabel?
    
    var parkingPriceLbl: UILabel?
    var parkingPriceValue: UILabel?
    
    var cleanPriceLbl: UILabel?
    var cleanPriceValue: UILabel?
    
    var totalPriceLbl: UILabel?
    var totalPriceValue: UILabel?
    
    var createdAtLbl: UILabel?
    var createdAtValue: UILabel?
    
    var index: CGFloat = 0
    var topSpace: CGFloat = 100
    var spaceBetween: CGFloat = 30
    var lblHeightScale: CGFloat = 0.05
    var valueHeightScale: CGFloat = 0.05

    
    func UpdateData(invoice: InvoiceDescriptionElement){
        self.invoice = invoice
        
        guard let consumptionWaterValue = consumptionWaterValue else { return }
        
        guard let consumptionElectricValue = consumptionElectricValue else { return }
        
        guard let waterCostValue = waterCostValue else { return }
        
        guard let electricCostValue = electricCostValue else { return }
        
        guard let waterPriceValue = waterPriceValue else { return }
        
        guard let electricPriceValue = electricPriceValue else { return }
        
        guard let internetPriceValue = internetPriceValue else { return }
        
        guard let parkingPriceValue = parkingPriceValue else { return }
        
        guard let cleanPriceValue = cleanPriceValue else { return }
        
        guard let totalPriceValue = totalPriceValue else { return }
        
        guard let createdAtValue = createdAtValue else { return }
        
        consumptionWaterValue.text = String(invoice.consumptionWater)
        consumptionElectricValue.text = String(invoice.consumptionElectric)
        waterCostValue.text = String(invoice.waterCost)
        electricCostValue.text = String(invoice.electricCost)
        waterPriceValue.text = String(invoice.waterPrice)
        electricPriceValue.text = String(invoice.electricPrice)
        internetPriceValue.text = String(invoice.internetPrice)
        parkingPriceValue.text = String(invoice.parkingPrice)
        cleanPriceValue.text = String(invoice.cleanPrice)
        totalPriceValue.text = String(invoice.totalPrice)
        createdAtValue.text = invoice.createdAt
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Details"
        self.view.backgroundColor = UIColor(named: "DynamicBackgroundColor")
        navigationController?.navigationBar.barTintColor = invoice?.isPaid == true ? UIColor(red: 102/255, green: 255/255, blue: 102/255, alpha: 0.01) : UIColor(red: 255/255, green: 71/255, blue: 26/255, alpha: 0.01)
        
        index = 0
        topSpace = 100
        spaceBetween = 20
        lblHeightScale = 0.05
        valueHeightScale = 0.05
        
        consumptionWaterLbl = UILabel()
        consumptionWaterValue = UILabel()
        
        consumptionElectricLbl = UILabel()
        consumptionElectricValue = UILabel()
        
        waterCostLbl = UILabel()
        waterCostValue = UILabel()
        
        electricCostLbl = UILabel()
        electricCostValue = UILabel()
        
        waterPriceLbl = UILabel()
        waterPriceValue = UILabel()
        
        electricPriceLbl = UILabel()
        electricPriceValue = UILabel()
        
        internetPriceLbl = UILabel()
        internetPriceValue = UILabel()
        
        parkingPriceLbl = UILabel()
        parkingPriceValue = UILabel()
        
        cleanPriceLbl = UILabel()
        cleanPriceValue = UILabel()
        
        totalPriceLbl = UILabel()
        totalPriceValue = UILabel()
        
        createdAtLbl = UILabel()
        createdAtValue = UILabel()
        
        guard let consumptionWaterLbl = consumptionWaterLbl else{ return }
        guard let consumptionWaterValue = consumptionWaterValue else { return }
        
        guard let consumptionElectricLbl = consumptionElectricLbl else{ return }
        guard let consumptionElectricValue = consumptionElectricValue else { return }
        
        guard let waterCostLbl = waterCostLbl else{ return }
        guard let waterCostValue = waterCostValue else { return }
        
        guard let electricCostLbl = electricCostLbl else{ return }
        guard let electricCostValue = electricCostValue else { return }
        
        guard let waterPriceLbl = waterPriceLbl else{ return }
        guard let waterPriceValue = waterPriceValue else { return }
        
        guard let electricPriceLbl = electricPriceLbl else{ return }
        guard let electricPriceValue = electricPriceValue else { return }
        
        guard let internetPriceLbl = internetPriceLbl else{ return }
        guard let internetPriceValue = internetPriceValue else { return }
        
        guard let parkingPriceLbl = parkingPriceLbl else{ return }
        guard let parkingPriceValue = parkingPriceValue else { return }
        
        guard let cleanPriceLbl = cleanPriceLbl else{ return }
        guard let cleanPriceValue = cleanPriceValue else { return }
        
        guard let totalPriceLbl = totalPriceLbl else{ return }
        guard let totalPriceValue = totalPriceValue else { return }
        
        guard let createdAtLbl = createdAtLbl else{ return }
        guard let createdAtValue = createdAtValue else { return }
        
        
        view.addSubview(consumptionWaterLbl)
        view.addSubview(consumptionWaterValue)
        
        view.addSubview(consumptionElectricLbl)
        view.addSubview(consumptionElectricValue)
        
        view.addSubview(waterCostLbl)
        view.addSubview(waterCostValue)
        
        view.addSubview(electricCostLbl)
        view.addSubview(electricCostValue)
        
        
        view.addSubview(waterPriceLbl)
        view.addSubview(waterPriceValue)
        
        view.addSubview(electricPriceLbl)
        view.addSubview(electricPriceValue)
        
        view.addSubview(internetPriceLbl)
        view.addSubview(internetPriceValue)
        
        view.addSubview(parkingPriceLbl)
        view.addSubview(parkingPriceValue)
        
        view.addSubview(cleanPriceLbl)
        view.addSubview(cleanPriceValue)
        
        view.addSubview(totalPriceLbl)
        view.addSubview(totalPriceValue)
        
        view.addSubview(createdAtLbl)
        view.addSubview(createdAtValue)
        
        
        SetupConsumptionWater(consumptionWaterLbl, consumptionWaterValue)
        
        SetupConsumptionElectric(consumptionElectricLbl, consumptionElectricValue)
        
        SetupWaterCost(waterCostLbl, waterCostValue)
        
        SetupElectricCost(electricCostLbl, electricCostValue)
        
        SetupInternetPrice(internetPriceLbl, internetPriceValue)
        
        SetupParkingPrice(parkingPriceLbl, parkingPriceValue)
        
        SetupCleanPrice(cleanPriceLbl, cleanPriceValue)
        
        SetupTotalPrice(totalPriceLbl, totalPriceValue)
        
        SetupCreatedAt(createdAtLbl, createdAtValue)
        // Do any additional setup after loading the view.
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
