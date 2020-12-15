//
//  Question.swift
//  Quizzler
//
//  Created by Yebin Park on 2020-12-15.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

