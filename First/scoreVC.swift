//
//  scoreVC.swift
//  First
//
//  Created by Kim Eunyoung on 2016. 8. 4..
//  Copyright © 2016년 Kim Eunyoung. All rights reserved.
//

import Foundation
import UIKit
class scoreVC: UIViewController {

    @IBOutlet var SViewer: UILabel!
    @IBOutlet var SLabel: UILabel!
    
    var scoredata = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scoredata = NSUserDefaults.standardUserDefaults().integerForKey("userScore")
        
        SViewer.text = String("\(scoredata)점")

        if scoredata <= 40 {
            SLabel.text = String("친구의 마음을 좀 더 생각해 주세요!") }
        else if scoredata >= 60 && scoredata <= 80 {
            SLabel.text = String("잘하고 있네요") }
        else {
            SLabel.text = String("당신은 인기쟁이군요!")
            
        }
    }
}
        

