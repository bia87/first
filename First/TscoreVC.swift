//
//  TeacherVC.swift
//  First
//
//  Created by Kim Eunyoung on 2016. 8. 6..
//  Copyright © 2016년 Kim Eunyoung. All rights reserved.
//

import Foundation
import UIKit

class TscoreVC : UIViewController {
    @IBOutlet var Score: UILabel!
    @IBOutlet var SLabel: UILabel!
    
    var scoreData : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scoreData = NSUserDefaults.standardUserDefaults().integerForKey("ParentScore")
        
        Score.text = String("\(scoreData)점")
        
        if scoreData <= 5 {
            SLabel.text = String("아이의 부탁을 들어주세요. 아이의 마음이 아파집니다.") }
        else if scoreData >= 6 && scoreData <= 8  {
            SLabel.text = String("아이의 목소리도 좀 들어주세요. 아이가 속상할 것 같아요.") }
        else {
            SLabel.text = String("아이의 이야기를 잘 들어주시는 좋은 엄마, 아빠!")
            
        }
    }
}