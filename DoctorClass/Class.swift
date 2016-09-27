//
//  Class.swift
//  DoctorClass
//
//  Created by 한상훈 on 2016. 9. 27..
//  Copyright © 2016년 Sanghoon Han. All rights reserved.
//

import Foundation

class Season{
    let seasonNumber: Int
    var casts : [Charactor]
    var newold : String {
        get {
        if (seasonNumber < 9) {return "old"} else { return "new"}
        }
    }
    init (number:Int){
        self.seasonNumber = number
        casts = []
    }
}

class Charactor {
    let name: String
    let image: String
    var part: String
    var realname: String
    init(name: String) {
        self.name = name
        image = ""
        part = ""
        realname = ""
    }
}

class Doctor : Charactor {
    var order: Int = 0
    let phrase: String = ""
}


var eleventh = Doctor(name: "Doctor")

func createDummy () -> [Season]{
var DoctorWho : [Season] = []
let season11 = Season(number:11)
season11.casts += [eleventh]
DoctorWho += [season11]
return DoctorWho
}

  
