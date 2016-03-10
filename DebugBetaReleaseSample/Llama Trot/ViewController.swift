//
//  ViewController.swift
//  Llama Trot
//
//  Created by Quang Tran on 3/9/16.
//  Copyright © 2016 ABC Virtual Communications. All rights reserved.
//

import UIKit

#if DEBUG
  let server = "dev"
#elseif BETA
  let server = "beta"
#else
  let server = "pro"
#endif

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    print(server)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

