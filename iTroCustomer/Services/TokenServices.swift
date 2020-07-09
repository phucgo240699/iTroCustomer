//
//  Token.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/29/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//
import Foundation
import RealmSwift
import Alamofire

class TokenServices {
    static func GetTokenFromDB() -> String{
        var accessToken:String = ""
        
            do {
                
                let realm = try Realm()
                let accessTokens = realm.objects(AccessToken.self)

                if(accessTokens.count > 0){
                    accessToken = accessTokens[0].token
                }
            } catch {
                return error.localizedDescription
            }
        
        return accessToken
    }
    
    static func CheckToken(_ accessToken: String) {
        // this is variable to check
        var isValidToken:Bool = false
        
        // Set up api property
        guard let url = URL(string: API.GetLink(.checkToken)) else {
            return
        }
        
        let headers: HTTPHeaders = [
            "Authorization": accessToken,
            "Accept": "application/json"
        ]
        
        // REQUEST CHECK TOKEN
        Alamofire.request(url, method: .get, parameters: nil, encoding:JSONEncoding.default, headers: headers).response {
                    response in
            guard let rawResponse = response.data else { return }
            
            guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
                let sceneDelegate = windowScene.delegate as? SceneDelegate
                else {
                    return
            }
            
            // Parse response from check token API
            let myResult = TokenValidation.decode(rawResponse)
            
            // if failed, show error
            if(type(of: myResult) == String.self){
                sceneDelegate.loginVC?.ShowError("Error", myResult as? String ?? "There is an error")
            }
            
            // if success, isValidToken = true, get user, update token to DB
            else if(type(of: myResult) == Users.self){
                isValidToken = true
                sceneDelegate.user = myResult as? Users
                isValidToken = UpdateAccessToken(accessToken) // in DB & sceneDelegate
            }
            
            if(isValidToken){
                sceneDelegate.window?.rootViewController = sceneDelegate.mainTab
            }
            else{
                sceneDelegate.window?.rootViewController = sceneDelegate.loginVC
                sceneDelegate.loginVC?.ShowError("Error", "Token login failed")
            }
                    
        }
    }
    
    static func UpdateAccessToken(_ accessToken: String) -> Bool{
        do {
            guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
                let sceneDelegate = windowScene.delegate as? SceneDelegate
                else {
                    return false
            }
            // Then save or create accesstoken to db
            let myToken = AccessToken()// this is token in db
            myToken.token = accessToken
            let realm = try Realm()
                
            let tokenInDB = realm.objects(AccessToken.self)
                
            // Create new if db doesn't has
            if(tokenInDB.count == 0){
                try realm.write{
                    realm.add(myToken)
                }
            }
                
            // update if token is already exist
            else{
                try realm.write{
                    tokenInDB[0].token = myToken.token
                }
                sceneDelegate.mainTab = nil
                sceneDelegate.mainTab = MainTabBarViewController()
            }
                
            sceneDelegate.accessToken = accessToken // Update accesstoken in sceneDelegate
            return true
            
        } catch  {
            return false
        }
    }

}
