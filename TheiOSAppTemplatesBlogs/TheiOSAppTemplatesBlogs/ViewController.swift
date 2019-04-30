//
//  ViewController.swift
//  TheiOSAppTemplatesBlogs
//
//  Created by Duy Bui on 4/29/19.
//  Copyright © 2019 iOSTemplates. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

  @IBOutlet weak var keychainLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let keychain = KeychainSwift()
    keychain.accessGroup = "123ABCXYZ.iOSAppTemplates"
    if let userName = keychain.get("userName"),
      let password = keychain.get("password") {
      keychainLabel.text = "The username is \(userName) and the password is \(password)"
    }
  }


}

