//
//  Question.swift
//  Quiz app
//
//  Created by MAX on 18/09/2022.
//

import Foundation

struct Question{
    var text : String
    var answer : String
    init(q : String, a:String){
        text = q
        answer = a
    }
}
