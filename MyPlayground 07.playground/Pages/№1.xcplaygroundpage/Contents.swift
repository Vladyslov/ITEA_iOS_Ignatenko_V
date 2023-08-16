//
////Класи: Кіт, собака, папуга, півень, корова
////Функції: voice, fly
////Атрибути: name, feetCount, wingsCount,
////Зовнішні функції: getMilk, getEgg
//
// розграничение між савцями і птицями
class Animal {
    var name: String
    
    func song() {
        print("Song on")
    }
    init(name: String) {
        self.name = name
    }
}


class Mammals: Animal {
    var feetCount: Int
    init(name:String, feetCount: Int) {
        self.feetCount = feetCount
        super.init(name: name)
    }
}

class Bird: Animal{
    let wingsCount: Int
    
    init(name: String, wingsCount: Int) {
        self.wingsCount = wingsCount
        super.init(name: name)
    }
}

class Cat: Mammals {
    override func song() {
        super.song()
        print("\(self.name) Maaaw")
    }
}

class Dog: Mammals {
    override func song() {
        super.song()
        print("\(self.name) Gavv")
    }
}

class Cow: Mammals {
    override func song() {
        super.song()
        print("\(self.name) Myyy")
    }
}

class Parrot: Bird {
    override func song() {
        super.song()
        print("\(self.name) Araaa")
    }
}

class Rooster: Bird {
    override func song() {
        super.song()
        print("\(self.name) Chika-chika")
    }
}

func getEgg(_ animal: Animal) {
    guard let animal = animal as? Bird else {return}
    print("\(animal.name) i can give Agg")
}

func getMilk(_ animal: Animal) {
    guard let animal = animal as? Mammals else {return}
    print("\(animal.name) i can give Milk")
}
