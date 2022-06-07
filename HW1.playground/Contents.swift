import UIKit

/*
 # Collection Example
 Includes: Array, Set, Dictionary
 */
var sampleArray: [Int] = [1,2,3,3,3,4,5,5]

// By creating a set, we remove duplicates from sampleArray
var uniqueArray = Set(sampleArray)

// However a set is not sorted
var sortedUniqueArray = uniqueArray.sorted()

// For loop demonstration 1 (Ranged)
for index in 1...(sortedUniqueArray.count-2) {
    print(sortedUniqueArray[index])
}

// Dictionary declaration
var sampleDictionary: [String:Int] = ["Ex1":1,
                                      "Ex2":2,
                                      "Ex3":3,
                                      "Ex4":4]
// For loop demonstration 2 (With if let)
for key in sampleDictionary.keys {
    if let example = sampleDictionary[key]
    {
        print(example)
    }
    else
    {
        print("Unkown key")
    }
}
// End of collections

/*
 # Struct Example
 */
struct Human{
    private var name:String
    private var age:Int
    
    // Constructor
    init(_ name:String,_ age:Int){
        self.name = name
        self.age = age
    }
    
    // "Mutating" is needed for changes in struct variables
    mutating func setName(_ name:String)
    {
        self.name = name
    }
}
// End of struct

/*
 # Class Example
 */
class Person{
    private var name:String
    private var age:Int
    
    /* With the use of "!" operator,
     we don't have to include it in init
     */
    private var experienceYears:Int!
    
    init(_ name:String, _ age:Int){
        self.name = name
        self.age = age
    }
    
    func giveInfo() {
        print("Hi I'm \(self.name), and I'm \(self.age) years old.")
    }
    
    // Without "_" operator
    func setExpYears(expYears:Int){
        self.experienceYears = expYears
    }
    
    /* if salary did not initiate,
     assign a def value with ?? operator
     */
    func calculateSalary()->Int{
        return 1000 * (experienceYears ?? 1)
    }
}
var newEmployee = Person("Ege",26)
newEmployee.giveInfo()
print(newEmployee.calculateSalary()) // 1000
newEmployee.setExpYears(expYears: 3)
print(newEmployee.calculateSalary()) // 3000
// End of class

/*
 # Optional Example
 Includes: if let, guard let
 */
var someOptionalString:String?
var flag:Bool = true;

/* Loop will continue till we assign our
 optional String a value
 */
while flag{
    if let checkedInt = someOptionalString{
        print("Value is assigned and we can continue with our lives")
        flag = false
    }
    else{
        print("Hold on I'm assigning it a value")
        someOptionalString = "lol"
    }
}

// Guard let
let functionDefaultReturnValue = -1

func someCalculationFunction(_ importantData:Int?) -> Int{
    guard let data = importantData else
    {
        print("We can't continue without the data !")
        return functionDefaultReturnValue
    }
    
    /* Main thing about guard let: let variable countinues
    to be accessible throughout the function scope.
     */
    return data * 1000
}

let planets : [String] = ["mars", "jupiter", "saturn"]
var index:Int? = planets.firstIndex(of: "earth")
var result = someCalculationFunction(index)
print(result) // -1
index = planets.firstIndex(of: "jupiter")
result = someCalculationFunction(index)
print(result) // 1000
// End of optionals

/*
 # Enumeration Example
 Includes: Switch
 */
enum Planet{
    case Mercury(String,Int)
    case Venus(String,Int)
    case Earth(String,Int)
    case Mars(String,Int)
}

/* Once the type is assigned,
 we can assign new Planet type with just a dot
 */
var selectedPlanet = Planet.Earth("Harbors life", 1)
selectedPlanet = .Mars("Red planet", 2)

// We can access the data using let or var
switch selectedPlanet {
case .Earth(let info, let moonCount):
    print("Earth:\(info) and has \(moonCount) moons")
case .Mars(let info, let moonCount):
    print("Mars:\(info) and has \(moonCount) moons")
default:
    print("Not a rocky planet")
}

// Values can be assigned to enums
enum Day:Int{
    case Monday = 1 // Rest will be automatically assigned
    case Tuesday
    case Wednesday
}
print("Tuesday is the \(Day.Tuesday.rawValue). day of the week.")
// End of enumerations
