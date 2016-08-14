//
//  gameVC.swift
//  First
//
//  Created by Kim Eunyoung on 2016. 8. 4..
//  Copyright © 2016년 Kim Eunyoung. All rights reserved.
//


import UIKit

struct Question {
    var QuestionNumber = Int()
    var Answers = [String]()
    var Answer = Int()
}

class gameVC: UIViewController {

    @IBOutlet var QuestionIV: UIImageView!
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var SLabel: UILabel!
    @IBOutlet var NextButton: UIButton!

    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    var Score : Int = 0

    override func viewDidLoad() {
    super.viewDidLoad()
    
        
    
    Questions =  [
        Question(QuestionNumber: 1, Answers: ["싫어.","다른 친구랑 놀아!","고마워 그렇지만 난 책읽기를 하고 싶어","하지마"], Answer: 2),
        Question(QuestionNumber: 2, Answers: ["나 읽고 있잖아. 귀찮게 하지마","선생님~! 얘가 자꾸 괴롭혀요","내가 다 읽고 줄게 기다려 줄래?","이 책은 내가 먼저 집었어"], Answer: 2),
        Question(QuestionNumber: 3, Answers: ["야! 순서를 지켜야지","선생님한테 이야기 할거야","이번에는 내가 양보해 줄게. 하지만 다음번엔 질서를 지켜줘","새치기는 나쁜거야"], Answer: 2),
        Question(QuestionNumber: 4, Answers: ["친구가 모르게 멀리 도망간다","미안해~하고 말한다","실수로 그랬어 미안해. 만드는 걸 도와줄까?","너도 내꺼 부순적 있잖아라고 말한다"], Answer: 2),
        Question(QuestionNumber: 5, Answers: ["나 때리지 마!","선생님께 가서 말한다","알겠어. 다음부터는 조심해줘","나도 똑같이 쳐준다"], Answer: 2)
        ]
        
        
        
        self.NextButton.alpha = 0.0
        
        PickQuestion()

    }
    
    
    func PickQuestion() {
        SLabel.text = String("\(Score)")
        NSUserDefaults.standardUserDefaults().setInteger(Score, forKey: "userScore")
        
        if Questions.count > 0 {
            QNumber = 0
            var number = 0
            
            number = Questions[QNumber].QuestionNumber
            
            let questionImage = UIImage(named: "Question\(number).png")
            QuestionIV.image = questionImage
            self.view!.addSubview(QuestionIV)

            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count {
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            Questions.removeAtIndex(QNumber)
        }
                
        else {
            SLabel.text = String("\(Score)")
            self.NextButton.alpha = 1.0
        }
    }
    
    @IBAction func bt1(sender: AnyObject) {
        if AnswerNumber == 0 {
            Score += 20
        }
        PickQuestion()
    }
    @IBAction func btn2(sender: AnyObject) {
        if AnswerNumber == 1 {
            Score += 20
        }
        PickQuestion()
        
    }
    @IBAction func bt3(sender: AnyObject) {
        if AnswerNumber == 2 {
            Score += 20
        }


        PickQuestion()
        
    }
    @IBAction func btn4(sender: AnyObject) {
        if AnswerNumber == 3 {
            Score += 20
        }
        PickQuestion()
        
    }
    
    
}

