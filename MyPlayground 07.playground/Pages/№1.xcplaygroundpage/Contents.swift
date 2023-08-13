//
////Класи: Кіт, собака, папуга, півень, корова
////Функції: voice, fly
////Атрибути: name, feetCount, wingsCount,
////Зовнішні функції: getMilk, getEgg
//

class Animal {
    private var name: String
    private var feetCount: Int
    
    init(name: String, feetCount: Int) {
        self.name = name
        self.feetCount = feetCount
    }
    
    func voice() {
        
    }
    
    func performActivity() {
        
    }
    
    func getName() -> String {
        return name
    }
    
    func getFeetCount() -> Int {
        return feetCount
    }
}

class Cat: Animal {
    override func voice() {
        print("\(getName()) says Мяу")
    }
    
    override func performActivity() {
     
    }
}

class Dog: Animal {
    override func voice() {
        print("\(getName()) says Gav")
    }
    
    override func performActivity() {
 
    }
}

class Parrot: Animal {
    private var wingsCount: Int
    
    init(name: String, feetCount: Int, wingsCount: Int) {
        self.wingsCount = wingsCount
        super.init(name: name, feetCount: feetCount)
    }
    
    override func voice() {
        print("\(getName()) says Kraaa")
    }
    
    override func performActivity() {
        fly()
    }
    
    private func fly() {
        print("\(getName()) is flying")
    }
}

class Rooster: Animal {
    override func voice() {
        print("\(getName()) says cokco-cokco")
    }
    
    override func performActivity() {
      
    }
}

class Cow: Animal {
    override func voice() {
        print("\(getName()) says Mooo")
    }
    
    override func performActivity() {
        getMilk()
    }
    
    private func getMilk() {
        print("\(getName()) is giving milk")
    }
}

class Farm {
    var animals: [Animal]
    
    init(animals: [Animal]) {
        self.animals = animals
    }
    
    func performFarmActivities() {
        for animal in animals {
            animal.voice()
            animal.performActivity()
            print("=====")
        }
    }
}

let cat = Cat(name: "Koks", feetCount: 4)
let dog = Dog(name: "Devil", feetCount: 4)
let parrot = Parrot(name: "Popka", feetCount: 2, wingsCount: 2)
let rooster = Rooster(name: "Colan", feetCount: 2)
let cow = Cow(name: "Moto-Moto", feetCount: 4)

let farm = Farm(animals: [cat, dog, parrot, rooster, cow])
farm.performFarmActivities()
