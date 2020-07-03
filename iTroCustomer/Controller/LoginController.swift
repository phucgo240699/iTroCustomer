//
//  LoginController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/29/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Alamofire
import RealmSwift

extension LoginVC{
    func DecodingLoginResponse(_ data: Data){
        do{
            let tokenResult = try JSONDecoder().decode(Token.self, from: data)
            
            if(tokenResult.success == true){
                TokenServices.CheckToken(tokenResult.accessToken!)
            }
        }
        catch{
            self.ShowError("Error", error.localizedDescription)
        }
    }
    
    @objc func LoginButtonAction(_ button: UIButton){

        // Check username and password not nil
        guard let username = usernameTxtField?.text,
            let password = passwordTxtField?.text  else {return}
        
        // Request login
        DispatchQueue.global(qos: .background).async {
            guard let url = URL(string: API.GetLink(.login) ) else {return}

            Alamofire.request(url, method: .post, parameters: ["username": username, "password": password], encoding: JSONEncoding.default, headers: nil).response{
                response in
                
                guard let data = response.data else { return }
                
                self.DecodingLoginResponse(data)
                //DispatchQueue.global(qos: .background).async {
                    
                
            }
        }
        
    }
    
}
//
//self.usernameTxtField?.text = ""
//    self.passwordTxtField?.text = ""
//
//    guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
//    let sceneDelegate = windowScene.delegate as? SceneDelegate
//    else {
//        return
//    }
//
//    sceneDelegate.mainTab = MainTabBarViewController()
//    sceneDelegate.window?.rootViewController = sceneDelegate.mainTab
//
//    // Then save or create accesstoken to db
//    if let token = tokenResult.accessToken{
//        let myToken = AccessToken()// this is token in db
//        myToken.token = token
//        let realm = try Realm()
//
//        let tokenInDB = realm.objects(AccessToken.self)
//
//        // Create new if db doesn't has
//        if(tokenInDB.count == 0){
//            try realm.write{
//                realm.add(myToken)
//            }
//        }
//
//        // update if token is already exist
//        else{
//            try realm.write{
//                tokenInDB[0].token = myToken.token
//            }
//        }
//
//        sceneDelegate.accessToken = token // Update accesstoken in sceneDelegate
//    }
//}
//else{
//    self.ShowError("Error", tokenResult.error ?? "There is an error")
//
//}
