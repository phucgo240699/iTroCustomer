//
//  SettingController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import RealmSwift

extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    
    static func GetRowHeight() -> CGFloat{
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let identify = "reusedCell"
        
        let cell = SettingTableViewCell()
        
        cell.name?.text = "Generate barcode"
        cell.thumbnail?.image = UIImage(systemName: "barcode")

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return SettingViewController.GetRowHeight()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0){
            self.present(BarCodeViewController(), animated: true, completion: nil)
        }
    }
    
    @objc func LogoutButtonAction(){
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let sceneDelegate = windowScene.delegate as? SceneDelegate else {
            return
        }
        
        DispatchQueue.global(qos: .default).async {
            do{
                let realm = try Realm()
                
                let tokensFromDB = realm.objects(AccessToken.self)
                
                if(tokensFromDB.count > 0){
                    try realm.write{
                        realm.delete(tokensFromDB)
                    }
                }
            }catch{
                self.ShowError("Error", error.localizedDescription)
            }
        }
        sceneDelegate.loginVC?.usernameTxtField?.text = ""
        sceneDelegate.loginVC?.passwordTxtField?.text = ""
        sceneDelegate.window?.rootViewController = sceneDelegate.loginVC
    }

}
