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


// MARK: DAY 8 of 100

//Structs

struct Sport {
    var name: String
}

var schoolSport = Sport(name: "football")
print(schoolSport.name)
schoolSport.name = "American football"
print(schoolSport.name)


//Computed property

struct Activity {
    var name: String
    var isOlimpicSport: Bool
    
    var isOlimpicStatus: String {
        if isOlimpicSport {
            return "\(name) is the Olimpic sport"
        } else {
            return "\(name) is NOT an olimpic sport"
        }
    }
}

var myActivity = Activity(name: "Skiing", isOlimpicSport: true)
print(myActivity.isOlimpicStatus)


// Property observer or "Do something when property changes"

struct Server {
    var status: String
    var storage: Int {
        didSet {
            print("My storage went to \(storage)%")
        }
    }
}

var myLaptop = Server(status: "Active", storage: 0)
myLaptop.storage = 20
myLaptop.storage = 50
myLaptop.storage = 100


//Methods
struct Country {
    var name: String
    var population: Int
    
    func collectTaxes() -> Int {
        population * 1000
    }
}

var myCountry = Country(name: "Ukraine", population: 44_000_000)
myCountry.collectTaxes()

//Mutating methods

struct Person {
    var name: String
    
    mutating func makeAnnonymous(){
        name = "Annonymous"
    }
}

var Person1 = Person(name: "Ed Sherah")
Person1.makeAnnonymous()
print(Person1.name)

//String methods
//Check if it start with some letters
let testString = "What is it"

testString.hasPrefix("Wh")

testString.uppercased()

//Array methods
//locate objects index number
let testArray = ["Mercedes", "Bmw", "Jaguar"]
testArray.firstIndex(of: "Jaguar")


//MARK: Day 9 of 100
//Initializers inside extension

struct User {
    var name: String
}

extension User {
    init() {
        self.name = "Annon"
    }
    
}

var user1 = User()
print(user1.name)
user1.name = "Alihandro"
print(user1.name)

//self inside init

struct Personal {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var user2 = Personal(name: "Mike Tayson")


// lazy key Word
struct FamilyTree {
    init(){
        print("Creating family tree...")
    }
}

struct Worker {
    var name: String
    lazy var family = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Worker(name: "Ed")
ed.family

// So, if you want to see the “Creating family tree!” message, you need to access the property at least once:

// Static value

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var stu1 = Student(name: "Art")
var stu2 = Student(name: "Mart")
print(Student.classSize)

// Access controll Private
struct Guard {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
}

var guard1 = Guard(id: "21312313")

//MARK: Day 10 of 100
//Class and inheritance

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var dog1 = Dog(name: "Marta", breed: "Shpiz")
dog1.breed
dog1.name

class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

var poodle = Poodle(name: "Poodliana")
poodle.name

//Overriding func

class Doggy {
    func makeNoise() {
        print("Woof")
    }
}

class Shpiz: Doggy {
    override func makeNoise() {
        print("Yip")
    }
}

let puppy = Shpiz()
puppy.makeNoise()

class Child {
    fileprivate var screamCount = 0
    func makeScream() {
        screamCount += 1
        print("AaAaAaAaAaAaa")
    }
}

class Adult: Child {
    override func makeScream() {
        screamCount += 1
        print("$^&*&^*$^#%!!!!!!")
    }
}

let lilKid = Child()
lilKid.makeScream()
lilKid.screamCount
let adult = Adult()
adult.makeScream()
adult.screamCount


//deinit()
class Neighbor {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeNewNeighbor() {
        print("my name is\(name), i'm Alive!")
    }
    
    deinit {
        print("I'm dead.")
    }
}

for _ in 1...3 {
    let person = Neighbor(name: "Persona")
    person.makeNewNeighbor()
}

//Mutability (no need mutating inside class in order to change values inside it)
//Even if class instance is constant "let" it's values can be changed
class Singer {
    var name = "Amaterasu"
}

let singerFromLa = Singer()
singerFromLa.name = "Lil Kristall"
print(singerFromLa.name)


//MARK: Day 11 of 100

//Protocols

protocol Identifiable {
    var id: String {get set}
}

class SecurityGuard: Identifiable {
    var id: String
    
    init(id: String) {
        self.id = id
    }
}


func checkId (badge: Identifiable) {
    print("User's id is: \(badge.id)")
}


var pe = SecurityGuard(id: "2313123123")
checkId(badge: pe)

protocol Rest {
    func takeNap()
}

class Schooler: Rest {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func takeNap() {
        print("\(name) just took a nap!")
    }
}


let schooler = Schooler(name: "Nicolas")
schooler.takeNap()

//Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 7
number.squared()


extension String {
    func newUpper() -> String {
        print("NOW I'M UPPERCASED!")
        return self.uppercased()
    }
}

let strink = "this is lowercased text"
print(strink.newUpper())



let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) elements")
        
        for i in self {
            print(i)
        }
    }
}
pythons.summarize()
beatles.summarize()


extension Int {
    func multiplyAndPrint() -> String{
        return "\(self) * \(self) is \(self * self)"
    }
}

let integ = 10
integ.multiplyAndPrint()


// Protocol oriented programming

protocol Id {
    var id: String {get set}
    
    func readId()
}

extension Id {
    func readId() {
        print("Id is \(id)")
    }
}


struct user: Id {
    var id: String
}

protocol playable: Id {
    
    func play()
}


class player: playable {
    var id = "0"
    
    func play() {
        print("playing games rn")
    }
    
}


class Man {
    var name: String
    var height: String
    
    init(name: String, height: String) {
        self.name = name
        self.height = height
    }
}

class Boy: Man {
    var age: Int
    
    init(age: Int, name: String, height: String) {
        self.age = age
        super.init(name: name, height: height)
    }
}


var boy = Boy(age: 12, name: "Marko", height: "133")
boy.age


protocol KindPerson {
    var isKind: Bool {get set}
    
    func checkIsKind()
}


class Murlok: KindPerson {
    var name = " "
    var isKind: Bool
    
    init(isKind: Bool) {
        self.isKind = isKind
    }
    
    func checkIsKind() {
        print(isKind ? "\(name) is kind" : "\(name) is bad character")
    }
}

var murlok = Murlok(isKind: false)
murlok.checkIsKind()

////MARK: Day 12 of 100
//Mark: optionals values
var optInt: Int? = nil
optInt = 38

//Unwrapping optionals
// if let = u can use UNWRAPPED value only once inside if let condition
if let unwrappedInt = optInt {
    print(unwrappedInt)
} else{
    print("There's nil")
}

//MARK: guard let = u can use it after the condition checked = accent for error "nil"
func greetMe(_ name: String?) {
    guard let name = name else {
        print("There's no data provided.")
        return
    }
    
    print("My name is \(name), greet me!")
}

greetMe("Nicolas")

//Force unwrap

let forceOptional: Bool? = true
print(forceOptional!)

//implicitly unwrapped optionals
//no need to unwrap them, but they behave as optionals
var imp: Int! = nil
print(type(of: imp))

//nil coalescing ??

func checkNum(_ number: Int) -> String? {
    if number == 1 {
        return "Number one"
    } else {
        return nil
    }
}

let resul = checkNum(22) ?? "N/A"
print(resul)

//Optional chaining
let names = ["John", "Paul", "George", "Ringo"]

print(names.first?.uppercased() ?? "N/A")

// TRY?

func calculateValue(for number: Int) throws -> String {
    "the number is \(number)"
}

let result = try? calculateValue(for: 32)
print(result!)


// Failable initializers

class FailClass {
    var number: Int
    
    init?(number: Int){
        if number == 22 {
            self.number = number
        } else {
            return nil
        }
    }
}

let fatal = FailClass(number: 9)
print(fatal?.number)

//as ? TYPE CASTING as?
class Macho {
    var name = "Anon"
}

class Customer: Macho {
    var id = 2323
}

class Employee: Macho {
    var salary = 203023
}

var customer = Customer()
var employee = Employee()
var peopleo = [customer, employee] //Array of type Macho

for p in peopleo {
    if let cust = p as? Customer {
        print("I'm a customer with id: \(cust.id)")
    } else if let emp = p as? Employee {
        print("I'm an employee and my salary is: \(emp.salary)")
    }
}



//MARK: Sets
//Subtracting method -> returns objects from first Set that doesn't occur in second Set
var uniques: Set = ["Mark", "Lev", "Arthur"]
var uniques2: Set = ["Tom", "Jerry", "Mark"]

let uniquesObject = uniques.subtracting(uniques2)
print(uniquesObject)

//Intersection of Set -> all mutual objects from set1 and set2
let intersectedSet = uniques.intersection(uniques2)
print(intersectedSet)

//Union = returns new Set with elements from set1 and set2
let unitedObjects = uniques.union(uniques2)
print(unitedObjects)

//symmetricDiffrence -> get all unique elements that ARE NOT in both sets
let diffrentObjects = uniques.symmetricDifference(uniques2)
print(diffrentObjects)

//Removing element from set
print(uniques)
uniques.remove("Mark")
uniques.remove("Lolita")
print(uniques)

//___________________

//MARK: self
extension String {
    func checkPelindrome() -> Bool {
        self == String(self.reversed())
    }
}

let uniqueString = "civic"
let pelindromeResult = uniqueString.checkPelindrome()
print(pelindromeResult ? "it's the same both ways!" : "it;s not pelindrime")

//MARK: Self
extension Numeric {
    func squaredNumber() -> Self {
        self * self
    }
}

let intNum = 20
let doubleNum = 2.2
let decimalNum: Decimal = 2.2
print(intNum.squaredNumber())
print(doubleNum.squaredNumber())
print(decimalNum.squaredNumber())


////MARK: Day 13 of 100
//Any array
let anyArray: [Any] = ["Swift", 12, false]
anyArray[0]
anyArray[1]
anyArray[2]

//dictionaries
let dictionarie: [String: Any] = [
    "first": "Arthur",
    "second": "Sh",
    "date": 14
]
dictionarie["first"]
dictionarie["second"]
dictionarie["date"]

//Break inside loops
var status = true
var counter = 0

while status {
    counter += 1
    print(counter)
    if counter == 20 {
        break
    }
}


//MARK: Day 14 of 100
//optionals

var items = ["Pen", "Silk", "Table"]

func findItemsIndex(for str: String, array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == str {
            return i
        }
        
    }
    
    return nil
    
}

findItemsIndex(for: "Pen", array: items)
findItemsIndex(for: "Table", array: items)
findItemsIndex(for: "Silk", array: items)
findItemsIndex(for: "Shower", array: items)


let numArray = [1, 5, 10, 15]

func foundItsIndex(for num: Int, array: [Int]) -> Int? {
    for i in 0..<array.count {
        if array[i] == num {
            return i
        }
    }
    return nil
}

foundItsIndex(for: 15, array: numArray)
foundItsIndex(for: 12, array: numArray)

//Enums

enum weatherType {
    case sun
    case rain
    case wind(speed: Int)
    case snow
}

func mood(weather: weatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "wind is not tat bad"
    case .rain, .snow:
        return "ewewww"
    case  .wind:
        return "windyyy"
    }
}

mood(weather: .wind(speed: 8))


enum workerType {
    case lazy
    case average
    case productive
    case hardCore
}

func workerTypeAnalysisBy(hoursPerDay: Int) -> workerType {
    switch hoursPerDay {
    case 0...3:
        return .lazy
    case 3...5:
        return .average
    case 5...9:
        return .productive
    default:
        return .hardCore
    }
}

let  Arthur = workerTypeAnalysisBy(hoursPerDay: 12)
print(Arthur)


func checkYourEmployee(status: workerType) -> String {
    switch status {
    case .lazy:
        return "You should work more 😴"
    case .average:
        return "Good, but it can be better 📈"
    case .productive:
        return "You are working more than average person do 👍"
    case .hardCore:
        return "You have to take some vacation ⛱️"
    }
}

checkYourEmployee(status: .hardCore)


//Class inheritance

class Singerr {
    var name: String
    var age: Int
    var isFamous: Bool
    var height: Double
    
    init(name: String, age: Int, isFamous: Bool, height: Double){
        self.name = name
        self.age = age
        self.isFamous = isFamous
        self.height = height
    }
    
    func sing() {
        print("Leleleleleleeeeeee")
    }
}

class VillageSinger: Singerr {
    override func sing() {
        print("Opa, opa, yeyeyeyeyeyeee, Opa, opa, ye ye ye.")
    }
}

class MetalSinger: Singerr {
    var noiseLevel: Int
    
    init(name: String, age: Int, isFamous: Bool, height: Double, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        
        super.init(name: name, age: age, isFamous: isFamous, height: height)
    }
    
    override func sing() {
        print("Raaawrrr, raaawwrrrrr")
    }
}

var Archibald = MetalSinger(name: "Arthur", age: 22, isFamous: false, height: 188, noiseLevel: 22)
Archibald.name
Archibald.age
Archibald.isFamous
Archibald.height
Archibald.sing()
