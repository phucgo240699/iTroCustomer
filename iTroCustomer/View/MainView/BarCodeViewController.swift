//
//  BarCodeViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/3/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import Alamofire

class BarCodeViewController: UIViewController {

    var barcodeImageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        // Do any additional setup after loading the view.
        
        barcodeImageView = UIImageView(image: UIImage())
        
        guard let barcodeImageView = barcodeImageView else { return }
        
        view.addSubview(barcodeImageView)
        
        SetupBarcodeImageView(barcodeImageView)
        
    }
    
    func SetupBarcodeImageView(_ barcodeImageView: UIImageView){
        guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate
            else {
                return
        }
        
        guard let barcode = sceneDelegate.user?.owner else {
            return
        }
        
        guard let barcodeImg = generateBarcodeFromString(from: barcode) else {
            return
        }
        barcodeImageView.image = barcodeImg
        barcodeImageView.translatesAutoresizingMaskIntoConstraints = false

        
        barcodeImageView.widthAnchor.constraint(equalToConstant: view.frame.width ).isActive = true
        barcodeImageView.heightAnchor.constraint(equalToConstant: view.frame.width * 0.5).isActive = true
        
        barcodeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        barcodeImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    func generateBarcodeFromString(from string: String)-> UIImage?{
        let data = string.data(using: String.Encoding.ascii)
        
         if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
             filter.setValue(data, forKey: "inputMessage")
             if let output = filter.outputImage {
                 return UIImage(ciImage: output)
             }
         }
        
         return nil
    }
    
//    func GetCustomerInfo(){
//        guard let url = URL(string: API.GetLink(.user) + "/") else { return }
//
//        let headers: HTTPHeaders = [
//            "Authorization": "",
//            "Accept": "application/json"
//        ]
//
//        guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
//        let sceneDelegate = windowScene.delegate as? SceneDelegate
//        else {
//            return
//        }
//
////        Alamofire.request(url, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: headers)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
