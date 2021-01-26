//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
	@IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
	@IBOutlet weak var btn3: UIButton!
	@IBOutlet weak var scoreLabel: UILabel!
	
   var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
		super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
		let usergotItRight = quizBrain.checkAnswer(userAnswer)
        
		if usergotItRight{
			sender.backgroundColor = UIColor.green
		} else{
			sender.backgroundColor = UIColor.red
		}
      
		quizBrain.nextQuestion()
		
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
		questionLabel.text = quizBrain.getQuestionText()
		
		btn1.setTitle(quizBrain.getChoice(0), for: .normal)
		btn2.setTitle(quizBrain.getChoice(1), for: .normal)
		btn3.setTitle(quizBrain.getChoice(2), for: .normal)
		
		progressBar.progress = quizBrain.getProgress()
		scoreLabel.text = "Score: \(quizBrain.getScore())"
		
        btn1.backgroundColor = UIColor.clear
        btn2.backgroundColor = UIColor.clear
		btn3.backgroundColor = UIColor.clear
    }
    
}

