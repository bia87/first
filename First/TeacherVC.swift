//
//  TeacherVC.swift
//  First
//
//  Created by Kim Eunyoung on 2016. 8. 6..
//  Copyright © 2016년 Kim Eunyoung. All rights reserved.
//

import Foundation
import UIKit

struct TQuestion {
    var Question = String()
    var Answer = Int()
}

class TeacherVC : UIViewController {
    
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var NextBT: UIButton!
    
    var Questions = [TQuestion]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var Score : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Questions = [
        TQuestion(Question: "가만 좀 있어. 아빠 엄마가 시키는 대로 해. 그럼 아무 문제없잖아!라고 이야기한다.", Answer: 1),
        TQuestion(Question: "그렇게 네 맘대로 하려거든 그만 둬. 대체 이게 뭐니?라고 이야기한다.", Answer: 1),
        TQuestion(Question: "시간없어. 그냥 빨리 이렇게 해.라고 이야기한다.", Answer: 1),
        TQuestion(Question: "생각을 좀 하고 행동해라, 이렇게 간단한 걸 가지고 말이야라고 이야기한다.", Answer: 1),
        TQuestion(Question: "그럴 줄 알았다. 엄마 아빠 말이 맞지? 담엔 괜한 고집 피우지 마!라고 이야기한다.", Answer: 1),
        TQuestion(Question: "알았어. 해 줄테니까 그만 좀 해!라고 이야기한다.", Answer: 1),
        TQuestion(Question: "시끄러워, 듣기 싫어.라고 이야기한다.", Answer: 1),
        TQuestion(Question: "시간 없어. 하지마.라고 이야기한다.", Answer: 1),
        TQuestion(Question: "귀찮게 하지 말고 저리가!라고 이야기한다.", Answer: 1),
        TQuestion(Question: "아이가 말하기 전에 무슨 말이 하고 싶어하는지 알아채고 앞서서 대답한다", Answer: 1)
        ]
        
        self.NextBT.alpha = 0.0

        PickQuestion()
    }
    
    func PickQuestion() {
        
        NSUserDefaults.standardUserDefaults().setInteger(Score, forKey: "ParentScore")
        
        if Questions.count > 0 {
            QNumber = 0
            
            AnswerNumber = Questions[QNumber].Answer
            QLabel.text = Questions[QNumber].Question
           
            Questions.removeAtIndex(QNumber)
        }
            
        else {
          self.NextBT.alpha = 1.0
        }
    }
    
    @IBAction func YesBT(sender: AnyObject) {
    PickQuestion()
    }
    
    @IBAction func NoBT(sender: AnyObject) {
        Score += 1
        PickQuestion()
        
    }
    
    
}