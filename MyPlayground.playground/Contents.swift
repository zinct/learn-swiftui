import Foundation

print("Hello Indra!")

// Immutable Variable
let nama = "Indra"
let arr = [
    "Indra",
    "Mahesa"
]

// Mutable Variable
let mutableArr = NSMutableArray(array: [
    "Indra",
    "Mahesa"
])

mutableArr.add("Arinza")
mutableArr

// If Else
let oper = "Indra Mahesa"

if oper == "Indra Mahesa" {
    print("Its True!")
} else {
    print("Its False!")
}

let foo = Optional("Indra Mahesa")
type(of: foo)
let bar = foo!
type(of: bar)

// Function
func noArgumentFunction() {
    print("Hello noArgumentFunction")
}

noArgumentFunction()

func withArgumentFunction(
    _ value: Int,
    _ value2: Int,
    optional: Int
) {
    print(value + value2 + optional)
}

withArgumentFunction(5, 10, optional: 1)

enum Status {
    case initial, loading, error, success
}

var ApiStatus = Status.initial
ApiStatus = .error

switch ApiStatus {
case .initial:
    print("Initial")
case .loading:
    print("Loading")
case .error:
    print("Error")
case .success:
    print("Success")
default:
    print("Other status")
}


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(for password: String) throws -> Bool {
    if(password.count < 8) {
        throw PasswordError.short
    }
    
    if(password == "12345678") {
        throw PasswordError.obvious
    }
    
    if(password == "admin123") {
        return true;
    } else {
        return false;
    }
}

do {
    var isPasswordCorrect = try checkPassword(for: "12345678");
    print(isPasswordCorrect)
} catch PasswordError.obvious {
    print("Password too obvious!")
} catch {
    print("There was an error!")
}

let opposites = [
    "indra": "Arinza",
    "arinza": "Indra"
]

if let arinzaOpposite = opposites["arinza"] {
    print("Arinza opposite is \(arinzaOpposite)")
}

let fakeNumber = ""
let realNumber = Int(fakeNumber) ?? 10

print(realNumber)
