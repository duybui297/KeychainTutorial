//
//  ReadBlogsViewController.swift
//  TheiOSAppTemplates
//
//  Created by Duy Bui on 4/29/19.
//  Copyright © 2019 iOSTemplates. All rights reserved.
//

import UIKit

class ReadBlogsViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func didTapOnReadOurBlogsButton(_ sender: Any) {
    guard let appURL = URL(string: "OpenBlogApp://") else {
      return
    }
    if UIApplication.shared.canOpenURL(appURL) {
      UIApplication.shared.open(appURL)
    }
  }
}
