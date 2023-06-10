//
//  ViewController.swift
//  MVVM_SingIn
//
//  Created by Илья on 9.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var viewModels = viewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModels.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
    }
    
}
