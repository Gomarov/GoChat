//
//  ViewController.swift
//  GoChat
//
//  Created by Павел on 13.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    #if DEBUG
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    #endif
}

