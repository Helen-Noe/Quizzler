//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Thin Myat Noe on 25/1/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let q: String
	let a: [String]
    let correctAnswer: String
    
	init(q: String, a: [String], correctAnswer: String){
		self.q = q
		self.a = a
		self.correctAnswer = correctAnswer
    }
}
