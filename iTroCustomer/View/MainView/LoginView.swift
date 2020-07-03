//
//  LoginVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/19/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import RealmSwift

class LoginVC: UIViewController{
    
    var usernameTxtField: UITextField?
    var passwordTxtField: UITextField?
    var loginImage: UIImageView?
    var loginButton: UIButton?
    var loginBacground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Background
        if let image = UIImage(named: "background-login"){
            
            loginBacground = UIImageView(image: image)
            loginBacground.frame = view.bounds
            loginBacground.contentMode = .scaleToFill
            view.addSubview(loginBacground)

                
            let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
            let blurView = UIVisualEffectView(effect: blurEffect)
            blurView.frame = loginBacground.bounds
            view.addSubview(blurView)

        }
        
        // Initialize
        usernameTxtField = UITextField()
        passwordTxtField = UITextField()
        loginImage = UIImageView(image: UIImage(named: "login-image"))
        loginButton = UIButton(type: UIButton.ButtonType.roundedRect)
        
        
        // Check nil
        guard let usernameTxtFieldUnWrap = usernameTxtField else { return }
        guard let passwordTxtFieldUnWrap = passwordTxtField else { return }
        guard let loginImageUnWrap = loginImage else { return }
        guard let loginButtonUnWrap = loginButton else { return }
        
        // Add to view
        view.addSubview(usernameTxtFieldUnWrap)
        view.addSubview(passwordTxtFieldUnWrap)
        view.addSubview(loginImageUnWrap)
        view.addSubview(loginButtonUnWrap)
        
        // Setup property
        SetupUsernameTxtField(usernameTxtField: usernameTxtFieldUnWrap)
        SetupPasswordTxtField(passwordTxtField: passwordTxtFieldUnWrap)
        SetupLoginImage(loginImage: loginImageUnWrap)
        SetupLoginButton(loginButton: loginButtonUnWrap)

    }
    
    
}
