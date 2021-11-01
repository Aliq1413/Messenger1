//
//  MsengVc.swift
//  Messenger1
//
//  Created by administrator on 28/10/2021.
//

import UIKit
import FirebaseAuth
class ConversationssViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    
       do {
                   try FirebaseAuth.Auth.auth().signOut()
               }
               catch {
               }
        
    }
           override func viewDidAppear(_ animated: Bool) {
               super.viewDidAppear(animated)
         
               validateAuth()
           }
           
           private func validateAuth(){
               // current user is set automatically when you log a user in
               if FirebaseAuth.Auth.auth().currentUser == nil {
                   // present login view controller
                   let vc = LoginViewController()
                   let nav = UINavigationController(rootViewController: vc)
                   nav.modalPresentationStyle = .fullScreen
                   present(nav, animated: false)
               }
           }
        
    }

