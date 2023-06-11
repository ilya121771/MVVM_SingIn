//
//  ViewController.swift
//  MVVM_SingIn
//
//  Created by Илья on 9.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    
    
    @IBAction func loginButton(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
    }
    
    @IBOutlet weak var statusText: UILabel!
    
    
    var viewModel = ViewModel()
    
    func initstate() {
//        label.textColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        bindViewModel()
        
        
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
//                self.statusText.text = statusText
            }
        })
    }
}
