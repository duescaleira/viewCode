//
//  ViewController.swift
//  viewCode
//
//  Created by Eduardo Escaleira on 25/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?

    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
     
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
   
    

}

