import UIKit


struct MySet: OptionSet {
    
    let rawValue: Int
    
    static let option0 = MySet(rawValue: 1 << 0)
    static let option1 = MySet(rawValue: 1 << 1)
    static let option2 = MySet(rawValue: 1 << 2)
    static let option3 = MySet(rawValue: 1 << 3)
    static let option4 = MySet(rawValue: 1 << 4)
    
    
    static let conj0: MySet = []
    static let conj1: MySet = [.option0, .option2, .option3]
    static let conj2: MySet = [.option3, .option4]
    static let conj3: MySet = [.option2, .option3, .option4]
}


String(MySet.option2.rawValue, radix: 2)
String(MySet.option3.rawValue, radix: 2)
String(MySet.option4.rawValue, radix: 2)
String(MySet.conj3.rawValue, radix: 2)
String(MySet.conj0.rawValue, radix: 2)


MySet.conj3.contains(.option3)
String(MySet.conj3.intersection(.option3).rawValue, radix:2)

String(MySet.conj3.contains(MySet.conj2))

String(MySet.conj3.rawValue, radix:2)
String(MySet.option3.rawValue, radix:2)


