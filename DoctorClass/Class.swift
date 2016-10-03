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
    var phrase: String = ""
}



func createDummy () -> [Season]{
    
    var DoctorWho : [Season] = []
    
    let season10 = Season(number:10)
    let season11 = Season(number:11)
    let season12 = Season(number:12)
    
    let tenth = Doctor(name: "Doctor")
    let eleventh = Doctor(name: "Doctor")
    let twelveth = Doctor(name: "Doctor")
    tenth.order = 10
    eleventh.order = 11
    twelveth.order = 12
    tenth.phrase = "Alonsi"
    eleventh.phrase = "Zeronimo"
    tenth.realname = "David Tenant"
    eleventh.realname = "Matt Smith"
    twelveth.realname = "Peter Cavaldi"
    
    let clara = Charactor(name:"Clara Ozwald")
    clara.realname = "Jena Colson"
    clara.part = "companion"

    season10.casts += [tenth]
    season11.casts += [eleventh, clara]
    season12.casts += [twelveth, clara]

    DoctorWho += [season10, season11, season12]
    
    return DoctorWho
}

  
