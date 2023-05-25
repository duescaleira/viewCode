//
//  LoginScreen.swift
//  viewCode
//
//  Created by Eduardo Escaleira on 25/05/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        
        return label
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "whatsapp")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var emailTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite o seu e-mail"
        textField.textColor = .darkGray
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
       let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.autocorrectionType = .no
        passwordTextField.backgroundColor = .white
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.keyboardType = .default
        passwordTextField.placeholder = "Digite a sua senha"
        passwordTextField.textColor = .darkGray
        passwordTextField.isSecureTextEntry = true
        
        return passwordTextField
    }()
    
    lazy var logginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
        
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta? Cadastre-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configSuperView()
        setUpConstraints()
        configBackground()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSuperView() {
        addSubview(loginLabel)
        addSubview(logoAppImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(logginButton)
        addSubview(registerButton)
        
    }
    
    private func configBackground() {
        backgroundColor = .systemGray5
        
        
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoAppImageView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 130),
            
            emailTextField.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            logginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            logginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            logginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            logginButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: logginButton.bottomAnchor, constant: 10),
            registerButton.trailingAnchor.constraint(equalTo: logginButton.trailingAnchor),
            registerButton.leadingAnchor.constraint(equalTo: logginButton.leadingAnchor),
            registerButton.heightAnchor.constraint(equalTo: logginButton.heightAnchor),
            
            
        ])
        
        
    }
    
    
    
}
