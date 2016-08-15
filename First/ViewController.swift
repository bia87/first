//
//  ViewController.swift
//  First
//
//  Created by Kim Eunyoung on 2016. 8. 4..
//  Copyright © 2016년 Kim Eunyoung. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
//    override func viewDidAppear(animated: Bool) {
//        let nav = self.navigationController?.navigationBar
//        
//        nav?.barStyle = UIBarStyle.Default
//        nav?.backgroundColor = UIColor.whiteColor()
//
//        nav?.tintColor = UIColor.blackColor()
////        이미지 위치와 크기
////        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
////        이미지 파일 지정
////        let image = UIImage(named: "이미지 파일이름")
////        imageView.image = image
////        네비게이션바에 이미지 부착
////        navigationItem.titleView = imageView
////        
////        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToHome(segue: UIStoryboardSegue){
        self.view.backgroundColor = UIColor.blackColor()
    }
    

}

