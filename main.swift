/*
================================================================================
                         COMPLETE SWIFT LANGUAGE COURSE
                        BASIC → INTERMEDIATE → ADVANCED
                       (Learn by reading COMMENTS + CODE)

================================================================================
*/

import Foundation   // Standard library utilities

// =============================================================================
//                                  MAIN
// =============================================================================

print("========= SWIFT FULL COURSE START =========\n")

// -----------------------------------------------------------------------------
// 1️⃣ VARIABLES & CONSTANTS
// -----------------------------------------------------------------------------

// var → mutable variable
var age: Int = 20

// let → constant (immutable)
let name: String = "Bhanu"

let marks: Double = 88.75
let grade: Character = "A"
let isStudent: Bool = true

print("Name:", name)
print("Age:", age)
print("Marks:", marks)
print("Grade:", grade)
print("Is Student:", isStudent)

// Type inference (Swift automatically detects type)
let city = "Hyderabad"
print("\nCity:", city)

// -----------------------------------------------------------------------------
// 2️⃣ OPERATORS
// -----------------------------------------------------------------------------

let a = 10
let b = 3

print("\nOperators:")
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a > b)

// -----------------------------------------------------------------------------
// 3️⃣ CONDITIONAL STATEMENTS
// -----------------------------------------------------------------------------

if marks >= 90 {
    print("Excellent")
} else if marks >= 60 {
    print("Good")
} else {
    print("Fail")
}

// switch (must be exhaustive in Swift)
switch grade {
case "A":
    print("Top Grade")
case "B":
    print("Average")
default:
    print("Needs Improvement")
}

// -----------------------------------------------------------------------------
// 4️⃣ LOOPS
// -----------------------------------------------------------------------------

print("\nFor Loop:")
for i in 1...5 {
    print(i, terminator: " ")
}

print("\n\nWhile Loop:")
var i = 1
while i <= 3 {
    print(i)
    i += 1
}

print("\nRepeat-While Loop:")
var j = 1
repeat {
    print(j)
    j += 1
} while j <= 2

// -----------------------------------------------------------------------------
// 5️⃣ ARRAYS, SETS & DICTIONARIES
// -----------------------------------------------------------------------------

var numbers: [Int] = [10, 20, 30, 40]
print("\nArray:", numbers)

var uniqueNumbers: Set = [1, 2, 2, 3]
print("Set:", uniqueNumbers)

var student: [String: Any] = [
    "name": "Bhanu",
    "age": 20
]
print("Dictionary:", student)

// -----------------------------------------------------------------------------
// 6️⃣ FUNCTIONS
// -----------------------------------------------------------------------------

func add(_ x: Int, _ y: Int) -> Int {
    return x + y
}

// Function with default parameter
func greet(name: String = "User") {
    print("Hello", name)
}

print("\nFunctions:")
print("Add:", add(5, 10))
greet(name: "Bhanu")

// -----------------------------------------------------------------------------
// 7️⃣ OPTIONALS (VERY IMPORTANT IN SWIFT)
// -----------------------------------------------------------------------------

var email: String? = nil   // Optional type

// Safe unwrap using if let
if let safeEmail = email {
    print("Email:", safeEmail)
} else {
    print("\nEmail is nil")
}

// Nil-coalescing operator
print("Email value:", email ?? "Not Provided")

// -----------------------------------------------------------------------------
// 8️⃣ STRUCTS
// -----------------------------------------------------------------------------

struct Student {
    var name: String
    var age: Int

    func display() {
        print("Student:", name, age)
    }

    mutating func birthday() {
        age += 1
        print("After Birthday:", age)
    }
}

var s1 = Student(name: "Bhanu", age: 20)
s1.display()
s1.birthday()

// -----------------------------------------------------------------------------
// 9️⃣ CLASSES & INHERITANCE
// -----------------------------------------------------------------------------

class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    func display() {
        print("Person:", name)
    }
}

class CollegeStudent: Person {
    var college: String

    init(name: String, college: String) {
        self.college = college
        super.init(name: name)
    }

    override func display() {
        print("\(name) studies at \(college)")
    }
}

let p = CollegeStudent(name: "Bhanu", college: "GIOE")
p.display()

// -----------------------------------------------------------------------------
// 🔟 PROTOCOLS (LIKE INTERFACES)
// -----------------------------------------------------------------------------

protocol Payment {
    func pay(amount: Int)
}

struct UPI: Payment {
    func pay(amount: Int) {
        print("Paid via UPI:", amount)
    }
}

struct Card: Payment {
    func pay(amount: Int) {
        print("Paid via Card:", amount)
    }
}

let pay1: Payment = UPI()
pay1.pay(amount: 1000)

// -----------------------------------------------------------------------------
// 1️⃣1️⃣ CLOSURES
// -----------------------------------------------------------------------------

let multiply = { (x: Int, y: Int) -> Int in
    return x * y
}

print("\nClosure Result:", multiply(3, 4))

// -----------------------------------------------------------------------------
// 1️⃣2️⃣ ENUMS
// -----------------------------------------------------------------------------

enum Direction {
    case north, south, east, west
}

let dir = Direction.north

switch dir {
case .north:
    print("Going North")
default:
    print("Other Direction")
}

// -----------------------------------------------------------------------------
// 1️⃣3️⃣ ERROR HANDLING
// -----------------------------------------------------------------------------

enum MathError: Error {
    case divideByZero
}

func divide(_ a: Int, _ b: Int) throws -> Int {
    if b == 0 {
        throw MathError.divideByZero
    }
    return a / b
}

print("\nError Handling:")
do {
    let result = try divide(10, 0)
    print(result)
} catch {
    print("Error occurred:", error)
}

// -----------------------------------------------------------------------------
// 1️⃣4️⃣ FILE HANDLING
// -----------------------------------------------------------------------------

let fileName = "demo.txt"
let text = "Hello from Swift file handling"

try? text.write(toFile: fileName, atomically: true, encoding: .utf8)

if let fileContent = try? String(contentsOfFile: fileName) {
    print("\nFile Content:")
    print(fileContent)
}

// -----------------------------------------------------------------------------
// 1️⃣5️⃣ GENERICS
// -----------------------------------------------------------------------------

func genericAdd<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}

print("\nGeneric Add:", genericAdd(5, 6))

// -----------------------------------------------------------------------------
// 1️⃣6️⃣ CONCURRENCY (ASYNC/AWAIT)
// -----------------------------------------------------------------------------

print("\nConcurrency Example:")

func asyncTask() async {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    print("Async Task Completed")
}

Task {
    await asyncTask()
}

sleep(2) // wait for async task

print("\n========= SWIFT FULL COURSE END =========")
