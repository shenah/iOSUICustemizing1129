//
//  ViewController.swift
//  SideBarUse
//
//  Created by 503-03 on 30/11/2018.
//  Copyright © 2018 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //사이드 바를 토글하는 코드
        if let revealVC = self.revealViewController(){
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }


}

