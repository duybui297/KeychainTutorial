//
//  ViewController.swift
//  TheiOSAppTemplates
//
//  Created by Duy Bui on 4/29/19.
//  Copyright © 2019 iOSTemplates. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {
  @IBOutlet weak var userNameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  @IBAction func didTapOnLoginButton(_ sender: Any) {
    guard let userName = self.userNameTextField.text,
      let password = self.passwordTextField.text else { return }
    
    let keychain = KeychainSwift()
    keychain.accessGroup = "123ABCXYZ.iOSAppTemplates"
    keychain.set(userName, forKey: "userName")
    keychain.set(password, forKey: "password")
    
    // This flow is navigation. Basically, it pushes to ReadBlogsViewController
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    if let readBlogsViewController = storyboard.instantiateViewController(withIdentifier: "ReadBlogsViewController") as? ReadBlogsViewController {
      self.navigationController?.pushViewController(readBlogsViewController, animated: true)
    }
  }
}

