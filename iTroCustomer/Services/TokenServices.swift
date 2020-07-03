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
                print(error.localizedDescription)
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
        
        //DispatchQueue.global(qos: .default).async {
        Alamofire.request(url, method: .get, parameters: nil, encoding:JSONEncoding.default, headers: headers).response {
                    response in
                    
                guard let rawResponse = response.data else { return }
                    
                guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
                    let sceneDelegate = windowScene.delegate as? SceneDelegate
                    else {
                        return
                }
                    
            let myResult = TokenValidation.decode(rawResponse)
            
            if(type(of: myResult) == String.self){
                sceneDelegate.loginVC?.ShowError("Error", myResult as? String ?? "There is an error")
            }
            else if(type(of: myResult) == Bool.self){
                isValidToken = true
            }
                
            sceneDelegate.window?.rootViewController = isValidToken == false ? sceneDelegate.loginVC : sceneDelegate.mainTab
                    
        }
        //}
        
    }

}
