//: Playground - noun: a place where people can play

import UIKit

var str = "不关联的代码分段隐藏，取消注释查看对应代码"

/*
let explicitDouble: Double = 70

let label = "The width is"
let width = 94
let widthLabel = label + String(width)
 */

 /*
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
*/

/*
var shoppingList = ["catfish", "water", "tulips",]
print(shoppingList)
shoppingList[1] = "bottle of water"
print(shoppingList)
*/

/*
var occupations = [
    "Malcolm": "Captain",
    "Kaylee" : "Mechanic",
]
print(occupations)
occupations["Jayne"] = "Public Relations"
print(occupations)
*/

/*
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

var optionalString: String? = nil
print(optionalString == nil)
 */

/*
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello,\(name)"
    print(greeting)
}
else {
    print(greeting)
}
*/

/*
let nickName: String? = nil
let fullName: String? = nil
let informalGreeting = "Hi \(nickName ?? fullName ?? "ff")"
*/

/*
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}
*/

/*
let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13,],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16, 25]
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
*/

/*
var n = 2
while n < 2 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
}while m < 2
print(m)
*/

/*
for i in 0..<4 {
    print(i)
}

for i in 0...4 {
    print(i)
}
*/

/*
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Bob", day: "Tuesday")

func greet2(_ person: String, on day: String) -> String {
    return "Hi \(person), today is \(day)"
}
greet2("John", on: "Wednesday")
*/

/*
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min,max,sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)
*/

/*
// 嵌套函数
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
*/

/*
 //返回值为函数的函数
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne(number:)
}
var increment = makeIncrementer()
increment(7)
*/

/*
//第一个参数为数组类型，第二个参数为函数类型
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]

//检测数组中是否有小于10的数字
hasAnyMatches(list: numbers, condition: lessThanTen(number:))
*/

/*
var numbers = [20, 19, 7, 12]

let myNumbers = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(myNumbers)

let mapNumbers = numbers.map({ number in 3 * number})
print(mapNumbers)

let mappedNumbers2 = numbers.map({ 3 * $0})
print(mappedNumbers2)

//排序
let sortedNumbers = numbers.sorted {$0 > $1}
print(sortedNumbers)
*/

/*
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
*/

/*
//初始化
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
 
var namedShape = NamedShape(name: "tom")
namedShape.simpleDescription()

//类继承
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    //重写父类方法
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test quare")
test.area()
test.simpleDescription()

//类继承
class EqualateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set(myValue) {
            //不手动起名称的话，会用隐含的名称newValue
            sideLength = myValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

var triangle = EqualateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
triangle.simpleDescription()


class TriangleAndSquare {
    var triangle: EqualateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EqualateralTriangle(sideLength: size, name: name)
    }
    
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
*/

/*
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.five
let aceRawValue = ace.rawValue
print(ace.simpleDescription())

enum rank {
    case one
    case two
}
let one = rank.one
//不指定类型的话 引用会报错
//let oneValue = one.rawValue

if let convertedRank = Rank(rawValue: 4) {
    let threeDescription = convertedRank.simpleDescription()
    
}

if let convertedRank2 = Rank(rawValue: 15) {
    let threeDescription = convertedRank2.simpleDescription()
}
else {
    print("nil")
}



enum Suit {
    //黑桃 红桃 方块 梅花
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "blackColor"
        case .hearts, .diamonds:
            return "redColor"
        }
    }
}
let hearts = Suit.hearts
let heartDescription = hearts.simpleDescription()
let heartsColor = hearts.color()



enum ServerResponse {
    case result(String, String)
    case failure(String)
    case disconnect(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let network = ServerResponse.disconnect("404")

switch network {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
case let .disconnect(cause):
    print("Network failure \(cause)")
}

//结构体
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
*/

/*
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//类
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

//结构体
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple struture"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//枚举
enum SimpleEnum: ExampleProtocol {
    mutating func adjust() {
        switch self {
        case let .Result(text):
            self = .Result(text + "(first case adjusted)")
        case let .Failure(text):
            self = .Failure(text + "(second case adjusted)")
        }
    }

    case Result(String)
    case Failure(String)
    
    var simpleDescription: String {
        get {
            switch self {
            case .Result("123"):
                return "13"
            case .Failure("李"):
                return "李"
            default:
                return "get error"
            }
        }
        set {
            switch self {
            case .Result("123"):
                self = .Result("12")
            case .Failure("李"):
                self = .Failure("312")
            default:
                self = .Failure("3333")
            }
        }
    }
}

var enumConformToProtocolTest = SimpleEnum.Failure("李")
enumConformToProtocolTest.adjust()
print("\(enumConformToProtocolTest)")
enumConformToProtocolTest.simpleDescription
enumConformToProtocolTest.simpleDescription = "test"

enumConformToProtocolTest = SimpleEnum.Result("ThirdVal")
enumConformToProtocolTest.simpleDescription
enumConformToProtocolTest.adjust()
enumConformToProtocolTest.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
var textExtension = 7
textExtension.simpleDescription
textExtension.adjust()
textExtension.simpleDescription
		
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//当使用类型为协议类型的值时，协议定义之外的方法不可用。会报错
//print(protocolValue.anotherProperty)
*/

/*
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func mySend(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    else if printerName == "Gutenberg" {
        throw PrinterError.outOfPaper
    }
    else if printerName == "Dongdong" {
        throw PrinterError.onFire
    }
    return "Job sent"
}

do {
    try mySend(job: 5, toPrinter: "Never Has Toner")
} catch {
    print(error)
}

do {
    try mySend(job: 5, toPrinter: "Bi sheng")
} catch {
    print(error)
}

do {
    try mySend(job: 15, toPrinter: "Gutenberg")
} catch PrinterError.outOfPaper {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

let printerSuccess = try? mySend(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? mySend(job: 1885, toPrinter: "Never Has Toner")
 */

/*
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("milk")
print(fridgeIsOpen)

func lookforSomething(name: String) throws {
    print("1-1")
    
    if name == "" {
        print("2-1")
        defer {
            print("2-2")
        }
        print("2-3")
    }
    print("1-2")
    defer {
        print("1-3")
    }
    print("1-4")
    
    if name == "hello" {
        print("3-1")
        defer {
            print("3-2")
        }
        print("3-3")
        defer {
            print("3-4")
        }
    }
    
    defer {
        print("5-1")
    }
}
print("--------")
try? lookforSomething(name: "")
print("--------")
try? lookforSomething(name: "hello")
 */

/*
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)
makeArray(repeating: 32, numberOfTimes: 3)

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
*/

/*
//未理解
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element
{
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
}
anyCommonElements([1, 2, 3], [3])
*/
