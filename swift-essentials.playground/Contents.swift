//: Playground - noun: a place where people can play

import UIKit

//  Variables - let and var
let nome = "Lucas"
var idade = 31
idade+=1
print ("My name is \(nome) and I'm \(idade) old")

let bigQuote = """
Testing
this
way
to
use
strings
"""

print(bigQuote)

// Array & Dictionary
var nomes = ["lucas","roberto","claudio"]
nomes.append("Robertinho");
for nome in nomes {
    print(nome)
}

var binaryDictonary = [
    "0000":0,
    "0001":1,
]

binaryDictonary["0000"]

//Default value

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

var total = 0
for i in 0..<4 {
    total += i
}
print(total)


// Declare a function
func sum(num1:Int, num2: Int) -> Int{
    return num1+num2
}

sum(num1: 1,num2: 2)

// Closures
var numbers = [20,15,30,45,50,65,90]
var testingClosure = numbers.map({ number -> Int in
    if number % 2 != 0 {
        return 0;
    } else {
        let result = 3 * number
        return result
    }
})
print(testingClosure)

//We can use numbers when closures are very simple.
let sortedNumbers = numbers.sorted{ $1 < $0}
print(sortedNumbers)


// Classes

class Pessoa {
    var nome: String;
    var idade: Int;
    
    init(nome:String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func description() -> String{
        return "Hello, my name is \(nome) and I'm \(idade) old"
    }
}

var gilberto = Pessoa(nome:"Gilberto",idade:20)
gilberto.description()

class Aluno:Pessoa{
    var escola: String;
    s
    init(nome:String,idade:Int,escola:String) {
        self.escola = escola
        super.init(nome:nome,idade:idade)
    }
    override func description() -> String {
        return "Hello, my name is \(nome),I'm \(idade) old and I study in \(escola)"
    }
}

var francisco = Aluno(nome: "Francisco Pereira Pinto", idade: 33, escola: "Robervania Federal")
francisco.description()

