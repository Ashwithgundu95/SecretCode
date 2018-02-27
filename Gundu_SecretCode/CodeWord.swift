//
//  CodeWord.swift
//  Gundu_SecretCode
//
//  Created by Gundu,Ashwith on 2/27/18.
//  Copyright © 2018 Gundu,Ashwith. All rights reserved.
//

import Foundation

class CodeWord{
var Symbols:[String]
var Count:Int
var Code:[String]
var OnSymbol:Int
var Attempts:Int
var Status:String
    var Guess : [String] = []

    init(Count:Int) {
        
        self.Symbols = ["W","x","Y","z"]
        self.Attempts = 0
        self.Count=4
        self.OnSymbol = 0
        self.Code = ["W","x","Y","z"]
        self.Status = "Hello"
        
    }

    func symbolToGuess(Symbol:String){
        
        Guess.append(Symbol)
        OnSymbol += 1
        self.Status = "Attempt"  + String(self.Attempts) + ":" + String(Guessed()) +  " symbols guessed"
        
        if Guess.count >= 4 {
            OnSymbol = 0
            self.Status = "Guess completed:" + String(Guessed()) +  "correct"
        }
        
    }
    
    func Guessed() -> Int{
        
        var c = 0
        for j in 0..<Guess.count
        {
            if Code[j] == Guess [j]
            {
                c += 1
            }
            
        }
        return c
    }

}
