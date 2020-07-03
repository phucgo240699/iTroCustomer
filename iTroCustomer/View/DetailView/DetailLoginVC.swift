//
//  DetailLoginVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/19/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension LoginVC{
    func SetupUsernameTxtField(usernameTxtField: UITextField) {
        usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        // Width, Height
        let width = view.frame.width/2
        let height = view.frame.height*0.05
        usernameTxtField.widthAnchor.constraint(equalToConstant: width).isActive = true
        usernameTxtField.heightAnchor.constraint(equalToConstant: height).isActive = true

        // X, Y
        usernameTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        usernameTxtField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Others
        usernameTxtField.backgroundColor = .white
        usernameTxtField.layer.cornerRadius = height/2
        usernameTxtField.textAlignment = .center
        usernameTxtField.font = UIFont(name: usernameTxtField.font?.fontName ?? "Helvetica Neue", size: height * 0.5)
        usernameTxtField.textColor = .black
        usernameTxtField.attributedPlaceholder = NSAttributedString(string: "Username...",
                                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    func SetupPasswordTxtField(passwordTxtField: UITextField) {
        passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        //
        // Width, Height
        //
        let width = view.frame.width/2
        let height = view.frame.height*0.05
        
        passwordTxtField.widthAnchor.constraint(equalToConstant: width).isActive = true
        passwordTxtField.heightAnchor.constraint(equalToConstant: height).isActive = true

        //
        // X, Y
        //
        passwordTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTxtField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: CGFloat(height * 1.5)) .isActive = true
        
        //
        // Others
        //
        passwordTxtField.backgroundColor = .white
        passwordTxtField.layer.cornerRadius = height / 2
        passwordTxtField.textAlignment = .center
        passwordTxtField.font = UIFont(name: passwordTxtField.font?.fontName ?? "Helvetica Neue", size: height * 0.5)
        passwordTxtField.textColor = .black
        passwordTxtField.attributedPlaceholder = NSAttributedString(string: "Password...",
                                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    func SetupLoginImage(loginImage: UIImageView) {
        loginImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Width, Height
        //
        var width = view.frame.width/2
            if(UIDevice.current.userInterfaceIdiom == .pad){
                width = view.frame.width * 0.3
            }
        let height = width
        
        loginImage.widthAnchor.constraint(equalToConstant: width).isActive = true
        loginImage.heightAnchor.constraint(equalToConstant: height).isActive = true
        //------------------------------------------------
        
        
        // X, Y
        //
        loginImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        //------------------------------------------------
        
        
        // Others
        //
        loginImage.layer.cornerRadius = height / 2
        loginImage.layer.masksToBounds = true
        
    }
    
    func SetupLoginButton(loginButton: UIButton) {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Width, Height
        var width = view.frame.width * 0.35
        if(UIDevice.current.userInterfaceIdiom == .pad){
            width = view.frame.width * 0.25
        }
        let height = width / 3
        
        loginButton.widthAnchor.constraint(equalToConstant: width).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        //------------------------------------------------
        
        
        // X, Y
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        
        
        // Others
        loginButton.backgroundColor = .orange
        loginButton.tintColor = .white
        loginButton.setTitle("Login", for: UIControl.State())
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: height / 2)
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = height / 2
        
        loginButton.addTarget(self, action: #selector(LoginVC.LoginButtonAction(_:)), for: UIControl.Event.touchUpInside)
    }
    
}
