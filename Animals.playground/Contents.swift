//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Animal{
    var name : String
    var health = 100
    
    init(name:String){
        self.name = name
    }
    func display(){
        print("I am a/(an) \(self.name) and I have \(self.health) health remaining.)")
    }
}

var animal1: Animal = Animal(name: "cat")
animal1.display()


//sub class
class Cat: Animal{
    init(catName: String){
        super.init(name: catName)
        // carrying the parent(Animal) class over to the subclass
        self.health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        health -= 10
        print("Running")
    }
}

class Lion : Cat{
    init(lionName: String){
        super.init(catName:lionName)
        self.health = 200
    }
    
    override func growl(){
        print("ROAR, I am king of the jungle!")
    }
}

class Cheetah : Cat{
    init(cheetahName: String){
        super.init(catName:cheetahName)
        self.health
    }
    
    override func run(){
        if self.health > 50{
            health -= 50
            print("Running really really fast")
        }else{
            print("Can't run")
        }

    }
    
    func sleep(){
        if health < 150{
            health += 50
        }else{
            health = 200
        }

    }

}

var animal2: Cheetah = Cheetah(cheetahName: "kal")
animal2.display()
animal2.run()
animal2.run()
animal2.run()
animal2.run()
animal2.display()





