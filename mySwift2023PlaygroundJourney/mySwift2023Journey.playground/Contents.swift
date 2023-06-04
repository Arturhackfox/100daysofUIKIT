import UIKit


//100daysOfSwift-UIKit

//MARK: day 1 of 100

let name: String = "Ashley"
let age: Int = 22

let str = """
1st line
2nd line
3dn line
"""

print(str)

let str2 = """
one \
line\
together
"""
print(str2)


//MARK: day 2 of 100

//array
let person1 = "Mike"
let person2 = "Joseph"
let person3 = "Nancy"
 
let students = [person1, person2, person3]
print(students)

//Sets
let people = Set([person1, person2, person3])
print(people)

let ingredients: Set = ["Pasta", "Shrimps", "Olive oil"]
print(ingredients)
ingredients.contains("Shrimps")

// Tuples - Stores multiple values together in a single Value
let data = (meta: "One", value: "Very long string", size: 24)
data.meta
data.value
data.size


let tuple = (name: "Alex", surname: "Freeman")

tuple.0



//Dictionaries
let artist = ["Ta": "Taylor Swift", "Ed": "Edward Sheran"]
let streams = ["Taylor": 123123141231]
let birthdays = [1: "Mikle", 2: "Nancy"]

print(artist["Ta"] ?? "N/A")
print(streams["Taylor"] ?? 0)
print(birthdays[2] ?? "N/A")



//Creating empty collection types
var dict = [String: Int]()
dict["KM"] = 10
print(dict["KM"] ?? 0)


var empArray = [String]()
empArray.append("Lucie")
print(empArray)


var empSet = Set<Int>()
empSet.insert(12)
print(empSet)

//Enums

enum Results {
    case success
    case failure
}
let Done = Results.success
let fail = Results.failure


//Enums associated values

enum Activities {
    case study(Subject: String)
    case chill(Kind: String)
    case work(Time: Int)
}

let Lucy = Activities.study(Subject: "English")
let Jason = Activities.work(Time: 9)




//Enums raw values

enum WeekDays: Int {
    case saturday = 1
    case monday = 0
    case tuesday = 2
    case wednesday = 3
    case friday = 4
}

let start = WeekDays(rawValue: 0)
let end = WeekDays(rawValue: 4)


enum Names: String {
    case mark = "M"
    case sania = "S"
}

let big = Names(rawValue: "S")


//MARK: day 3 of 100

let cards = 5

if cards > 5 {
    print("There are more than 5 cards")
} else if cards == 5 {
    print("5 cards remaining")
} else {
    print("There is less than 5 cards.")
}


let p1 = 180
let p2 = 130

if p1 > 140 && p2 > 140 {
    print("You're allowed for this slide")
} else {
    print("Not high enough!")
}


let wallet1 = 230.14
let wallet2 = 1503.23

if wallet1 < 500 || wallet2 < 500 {
    print("Poor students...")
} else {
    print("You have $$$!")
}



//Ternary operator
let isTeenager = false

isTeenager ? print("It's teenager!)") : print("Adult!")


let name1 = "Archi"
let name2 = "Arthur"

print(name1 == name2 ? "same names here." : "they differ")



//Switch condition

let Weather = "Rainy"

switch Weather {
case "Rainy":
    print("Take something waterproof")
case "Sunny":
    print("Take sunscreen")
case "Snowy":
    print("Better wear something warm")
default:
    print("Have a good one!")
}


let points = 120

switch points {
case 0..<50:
    print("U failed an exam.")
case 50..<100:
    print("Average")
default:
    print("You passed exam.")
}

//MARK: day 4 of 100


let members = ["John", "Mikle", "Ferid"]

for member in members {
    print("\(member) is the vip here")
}


for _ in members {
    print("yes, we did this \(members.count) times")
}


var  numberz = 1

while numberz <= 20 {
    print(numberz)
    numberz += 1
    }
print("Ready or not, here i come!")


var countie = 1

repeat {
    print(countie)
    countie += 1
} while countie <= 20

print("Here i go!")



//Exiting the loop

var countDown = 20

while countDown > 0 {
    print(countDown)
    countDown -= 1
    
    if countDown == 5 {
        print("I'm bored")
        break
    }
}

print("Take off!")


for person in ["Stew", "Annie"] {
    print(person)
}


//Exiting from multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        var result = i * j
        print("\(i) * \(j) is \(result)")
        
        if result == 50 {
            print("Its 50!")
            break outerLoop
            
        }
    }
}



//Skipping the loop

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//MARK: day 5 of 100

//func

func sayHello (to name: String) -> String {
    return "Hello \(name)!"
}

let persona1 = sayHello(to: "Arthur")
print(persona1)


func behave (name: String, isGood: Bool = true) -> String {
    if isGood {
        return "\(name) behaves nicely!"
    } else if isGood == false {
        return "\(name) is very bad person!"
    }
    return "Its time to grow up!"
}


behave(name: "Arthur")
behave(name: "Alex", isGood: false)

//vardiadic func

func squaredNumbers (number: Int...) {
    for i in number {
        print("\(i) * \(i) is \(i * i)")
    }
}

squaredNumbers(number: 2, 4 , 10)


func smiley (word: String...) {
    for i in word {
        print("\(i))))")
    }
}

smiley(word: "Na", "cha", "Pas")


//Throwing errors func

enum passwordError: Error {
    case obvious
    case short
}


func passwordCheck (_ password: String) throws -> Bool {
    if password == "password" {
        throw passwordError.obvious
    }
    return true
}


do {
    try passwordCheck("password")
    print("Ur password is good!")
} catch {
    print("You cant use this password!")
}


//InOut func

func doubler (num: inout Int) {
    num *= 10
}

var numBerio = 10
doubler(num: &numBerio)
print(numBerio)



// Tuples

var Details = ("Arthur", 22)
print(Details.0)
print(Details.1)

var (nameOfDetails, ageOfDetails) = Details

nameOfDetails = "Mark"
ageOfDetails = 32

print(nameOfDetails)
print(ageOfDetails)


//Creating tuple with own names

var Pers: (eyes: String, isAvailable: Bool) = ("Green", true)
print(Pers.eyes)
print(Pers.isAvailable)

Pers.eyes = "Blue"
Pers.isAvailable = false

print(Pers.eyes)
print(Pers.isAvailable)



//Copying

var someTuple = ("Sh", 200)

var newSomeTuple = someTuple
newSomeTuple.0 = "Shev"

print(someTuple.0)
print(newSomeTuple.1)

var (vladsSur, vladsHeight) = newSomeTuple
vladsSur = "Shevchuk"
vladsHeight = 160

print(vladsSur)
print(vladsHeight)



//MARK: DAY 6 of 100

//Closures

var driving = {
    print("Hello, i'm driving")
}

driving()

// Closures with parameters

var riding = { (place: String) in
    print("I'm driving \(place)")
}

riding("home")

// Closures with return

var drivingWithReturn = { (place: String) -> String in
    "I'm driving to my \(place)"
}

var destination = drivingWithReturn("base")
print(destination)


//Closure inside func

var drivingg = {
    print("i'm driving right now")
}

func story (action: () -> Void) {
    print("I sat down in my car")
    action()
    print("i finished the ride!")
}

story(action: drivingg)




func ActivateMyDay (action: () -> Void) {
    print("Hmmm, should i star???")
    action()
}


ActivateMyDay {
  print("I gotta box")
}



//Closures as parameter, and they also accept parameter

func move (action: (String) -> Void) {
    print("I want and i will")
    action("Spain")
}

move { (place: String) in
    print("drive to the \(place) in my car")
}


var question = { (ask: String) in
    print("i'd like to ask u: \(ask)")
}


question("how do u do ?")


func multipleQuestions (name: (String) -> Void) {
    print("My name is Arthur")
    print("should i guess ur name ? hmm...")
    name("Mike")
}

multipleQuestions  { (name: String) in
    print("is it \(name) ?")
}


func guesser (name: (String) -> Void) {
    print("I think ur name is...")
    name("Alibi")
}

guesser { (nameGuess: String) in
    print("I'd like to use \(nameGuess)")
}


var testClosure = { (name: String) in
    print("hehe to \(name)")
}

testClosure("Taylor")


// Using closure as parameter in func and return value

func storyTell (action: (String) -> String) {
    print("I'm getting ready for a trip")
    let description = action("London")
    print(description)
}

storyTell { place in
    "I;m gonna travel to \(place) by my car"
}


//Func with closure that accepts 2 parameters

func rideStory (action: (String, Int) -> String) {
    print("I'm ready to start the engine")
    let description = action("Mercedes", 240)
    print(description)
}


rideStory { carName, carSpeed in
    "I'm driving the \(carName) with max speed of \(carSpeed)"
}

//rideStory {
//    "I'm driving the \($0) with max speed of \($1)"
//}


// Ranges

var tillRange = ..<5
var allOtherRange = 0...
let arr = Array(1...10)
print(arr)

print(arr[tillRange])
print(arr[allOtherRange])

let array55 = Array(1...55)
print(array55[..<10])


var first = 1
var second = 5

let range3 = first...second
print(range3)

print(array55[range3])


var clo = {
    print("im a closure")
}

func cloclo (action: (String) -> String) {
    print("Im activating closure!")
    action("Archi")
}

cloclo { name in
   "i'm closure called \(name)"
}

//  MARK: Closure inside func
func calculation (res: (String) -> String) {
    res("zero")
}

calculation { res in
    "2 * 0 is \(res)"
}
