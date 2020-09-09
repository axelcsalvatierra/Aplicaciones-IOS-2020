//
//  ViewController.swift
//  DemoTecladoObserver
//
//  Created by Axel Salvatierra on 9/9/20.
//  Copyright © 2020 Axel Salvatierra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickClosekeyboard(_ sender: Any) {
        print("CERRAR TECLADO ACCION")
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
        
    }
    
    @objc func keyboardWillShow(_ notification: Notification){
        
        print("EL TECLADO APARECE")
        
        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
        let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        
        print(keyboardFrame)
        print(animationDuration)
        
    }
    
    @objc func keyboardWillHide(_ notification: Notification){
        
        print("EL TECLADO SE OCULTA")
        
    }


}

