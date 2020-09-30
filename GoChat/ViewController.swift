//
//  ViewController.swift
//  GoChat
//
//  Created by Павел on 13.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.log()
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Logger.log()
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        Logger.log()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Logger.log()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Logger.log()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Logger.log()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        Logger.log()
    }
    
}

