//
//  ViewController.swift
//  AlertControllerCustemizing
//
//  Created by 503-03 on 30/11/2018.
//  Copyright © 2018 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = CSButton(type: .circle)
        button.frame = CGRect(x: 150, y: 150, width: 200, height: 50)
        self.view.addSubview(button)
    }
    //뷰가 화면에 출력된 후 호출되는 메소드
    override func viewDidAppear(_ animated: Bool) {
        //상위 클래스의 메소드 호출
        super.viewDidAppear(animated)
        //대화상자를 만들어서 출력
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(confirm)
        let contentTVC = ListTVC()
        contentTVC.p = self
        alert.setValue(contentTVC, forKey: "contentViewController")
        self.present(alert, animated: true)
    }
    
    func select(_ indexPath : IndexPath){
        print("\(indexPath.row)를 선택")
    }
    

}

