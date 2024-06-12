import UIKit

// Day 3 – operators and conditions

// Arithmetic operators

// +/* same as other languages

// Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

print(doubleMeaning)

let fakers = "Fakers gonna "
let action = fakers + "fake"

print(action)

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]

let beatles = firstHalf + secondHalf

print(beatles)

// Compound assignment operators
      
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

print(score)
print(quote)

// Conditions --> if else & if-else-if ==> same as other lang

// Comparison operators >= <= ==

// range

for i in 0...10{
    print(i)
}

// Ternary Operators

var a = 5
var b = 10

// Traditional Way
if(a==b){
    print("same<--->same")
}
else{
    print("nope not same same")
}
// Ternary Way

print(a == b ? "A is equal to B " : "A is not equal to B") // cond ? True then execute this : false execute this

//Swittch Case // Same as others 


