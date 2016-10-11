//: Playground - noun: a place where people can play

import UIKit

func BMI(a: [Float]) -> Bool {
    if ((a[1] / (a[0])) >= 0.5) {
        return true
    } else {return false}
}

let people : [String:[Float]] = ["김동현" : [104, 100], "남주현" : [140,49], "마마무" : [169,80], "박한별" : [180,120]]
for name in people {
    print("\(name.key)의 키는 \(name.value[0])이고, 몸무게는 \(name.value[1])kg 입니다.")
    if ( BMI(a: name.value) ) { print("그러니까 비만이라고요.") } else { print ("다행히 비만은 아닙니다.")}
}


for name in people {
    print("\(name.key)씨는.. ")
    if ( BMI(a: name.value) ) { print("그러니까 비만이라고요.") } else { print ("다행히 비만은 아닙니다.")}
}





//
//
//
//
//
//
//
//var height : [Int] = []
//
//for name in people.values {
//    height += [name]
//}
//
//var nameOrder : [String]
//
//
