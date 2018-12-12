//
//  ViewController.swift
//  UICustemizing1129
//
//  Created by 503-03 on 29/11/2018.
//  Copyright © 2018 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "nevigationbarCustemizing"
        
        //titleView 가져오기
        let naviView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 35))
        
        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
        topTitle.text = "더조은 컴퓨터 학원"
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 14)
        topTitle.textColor = UIColor.white
        
        let bottomTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 17))
        bottomTitle.text = "더조은 컴퓨터 학원"
        bottomTitle.numberOfLines = 1
        bottomTitle.textAlignment = .center
        bottomTitle.font = UIFont.systemFont(ofSize: 10)
        bottomTitle.textColor = UIColor.white
        
        naviView.addSubview(topTitle)
        naviView.addSubview(bottomTitle)
        
        self.navigationItem.titleView = naviView
        
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        //@전까지 이름
        let back = UIImage(named: "arrow-back")
        let leftButton = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = leftButton
        
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 300, height: 120)
        //옵션 설정
        tf.backgroundColor = UIColor.white
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.keyboardType = .URL
        tf.layer.borderWidth = 0.4
        tf.layer.borderColor = UIColor(red: 0.3, green: 0.5, blue: 0.2, alpha: 1.0).cgColor
        self.navigationItem.titleView = tf
        
        //네비게이션 오른쪽 부분에 1개의 레이블, 1개의 바버튼을 배치
        //레이블과 버튼을 담을 View 생성
        let rv = UIView()
        rv.frame = CGRect(x: 0, y: 0, width: 70, height: 37)
        let rvItem = UIBarButtonItem(customView: rv)
        self.navigationItem.rightBarButtonItem = rvItem
        //화면에 출력하는 부분은 먼저 생성하고 후에 디자인 코드를 작성해도 됩니다. - 화면출력은 모아서 한꺼번에 처리
        //레이블
        let cnt = UILabel()
        cnt.frame = CGRect(x: 0, y: 8, width: 20, height: 20)
        cnt.font = UIFont.systemFont(ofSize: 10)
        cnt.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        cnt.textAlignment = .center
        cnt.text = "3"
        // 모서리 둥글게 처리
        cnt.layer.cornerRadius = 3
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).cgColor
        
        rv.addSubview(cnt)
        
        //버튼 하나
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "more"), for: .normal)
        rv.addSubview(more)
        
        //대화상자 만들기
        let alert = UIAlertController(title: "뷰 컨트롤러 출력", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        //대화상자에 삽입할 뷰 컨트롤러 만들기
        let contentVC = UIViewController()
        //이미지와 이미지 뷰 객체를 생성
        let image = UIImage(named: "rating5")
        let imageView = UIImageView(image: image)
        //이미지 뷰의 프레임 설정
        imageView.frame = CGRect(x: 0, y: 0, width: (image?.size.width)!, height: (image?.size.height)!)
        //이미지 뷰 삽입
        contentVC.view.addSubview(imageView)
        //contentVC 사이즈 설정
        contentVC.preferredContentSize = CGSize(width: (image?.size.width)!, height: (image?.size.height)!)
        
        //대화상자에 삽입
        alert.setValue(contentVC, forKey: "contentViewController")
        //대화 상자 출력
        self.present(alert, animated: true)
    }
}

