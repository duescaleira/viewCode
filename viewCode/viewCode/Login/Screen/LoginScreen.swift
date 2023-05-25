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
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubView()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        addSubview(loginLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        
        ])
        
        
    }
    
    

}
