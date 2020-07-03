//
//  SettingController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import RealmSwift

extension SettingViewController{
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
        
        sceneDelegate.window?.rootViewController = sceneDelegate.loginVC
    }
}
