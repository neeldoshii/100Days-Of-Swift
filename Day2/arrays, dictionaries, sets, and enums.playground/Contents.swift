import UIKit
//Day 2 – arrays, dictionaries, sets, and enums


// Array Declaration
var array  = ["hello","World","Day2","Swift","iOS"]

// Printing Array
print("The array is  \(array)")

// Accessing Array same as other lang

print(array[0])

// Dictionaries same as map in python
// In swift this is unordered whereas in python from 3.7 its ordered.

var dict = ["Neel" : 147, "SaSomeName1" : 148, "SomeName2" : 149, "SomeName3" : 150]
//var dict = ["Neel" : 147, "SomeName1" : 148, "SomeName2" : 149, "SomeName3" : 150, 150 : true]
// Swift doesnt supports any datatype allocation
// Here it allocated data type String : Int

// Inorder to use this u can use it like this [Hashable : Any] // Chatgpt says not recommended


print(dict)
// Data Type Declaration

var dictionary : [String : Int] = ["Neel" : 147, "SomeName1" : 148, "SomeName2" : 149, "SomeName3" : 150]
// Dict method as usual as python

print(dict.keys)
print(dict.values)
print(dict.count)

//Tuples

// Tuples are similar to what we have in python
// Immutable
// Represented by paranthesis ()

var tuple = (0,1,2,3,4,5)
print(tuple)

// Accessing tuples in swift

print("Tuple at 0 index is \(tuple.0) ")

// Cool way in swift is you can have name to the value like dict for tuple
var student = (name : "Neel", age : 50, salary : 100)
print("Accessing Student Name : \(student.name) , Age : \(student.age) , Salary : \(student.salary)")


// Sets
// Same as Python no duplicates
// Methods union, intersection same as Maths
var setsA = Set([1,2,3,4,5,4]) // 4 only once no duplication

print(setsA)

// Enums
// In Swift, an enum (short for enumeration) is a user-defined data type that has a fixed set of related values.

// Basics, Raw Values, Associated Values, CaseIterable

enum socialMedia{
    case instagram
    case twitter
    case linkedIn
    case youtube
}

// Accessing ENUMS
print(socialMedia.instagram) // Instragram
print(socialMedia.youtube) // youtube

// Basic --> enums
func whichSocial (on social: socialMedia){
    switch social{
        
    case .instagram:
        print("when passed Instagram")
       // TODO when passed Instagram
    case .twitter:
        print("when passed Twitter")
        // TODO when passed Twitter
    case .linkedIn:
        print("when passed LinkedIn")
        // TODO when passed LinkedIn
    case .youtube:
        print("when passed Youtube")
        // TODO when passed Youtube
    }
}


whichSocial(on: socialMedia.instagram)
whichSocial(on: .linkedIn)

// Raw Values Declaration

enum rawvalue :String{
    case a = "Raw value of a is 10"
    case b = "Raw Valuue of b is 20"
}


func getRawValue(for raw : rawvalue){
    print(raw.rawValue)
}

getRawValue(for: rawvalue.a)


// Case Itterable is basically used to itterate over enums
/*
enum rawvalue :String, CaseIterable{
    case a = "Raw value of a is 10"
    case b = "Raw Valuue of b is 20"
}

for i in rawvalue.allCases{
    print("i : \(i) Rawvalue is : \(i.rawValue)")
}
*/

// Associated Values in enums

enum marks {
    case maths (Int)
    case history (totalMarks : Int)
    case science(totalMarks : Int)
}


func checkPass(for enumMarks : marks){
    switch enumMarks {
    case .maths(let score):
        print("You scored : \(score)")
    
        
    case .history(totalMarks: let totalMarks):
        print("You scored : \(totalMarks)")
    case .science(totalMarks: let totalMarks):
        print("You scored : \(totalMarks)")
    }
}



checkPass(for: marks.maths(123_45))
checkPass(for: marks.history(totalMarks: 123))
checkPass(for: marks.science(totalMarks: 150))






