
class Athlete {
    var name: String
    var lastName: String
    var gender: String
    var height: Double
    var uniform: String
    var nationality: String
    private var _age: Int
    
    init(name: String, lastName: String, gender: String, height: Double, uniform: String, nationality: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.gender = gender
        self.height = height
        self.uniform = uniform
        self.nationality = nationality
        self._age = age
    }
    
    var age: Int {
        get {
            return _age
        }
        set {
            if newValue >= 0 {
                _age = newValue
            }
        }
    }
    
    func mobility() {
        
    }
    
    func run() {
       
    }
    
    func jump() {
        
    }
}

class BasketballPlayer: Athlete {
    override func mobility() {
        print("\(name) is moving on the basketball court")
    }
    
    override func run() {
        print("\(name) is running on the basketball court")
    }
    
    override func jump() {
        print("\(name) is jumping with the ball")
    }
}

class FootballPlayer: Athlete {
    override func mobility() {
        print("\(name) is moving on the football field")
    }
    
    override func run() {
        print("\(name) is sprinting on the football field")
    }
    
    override func jump() {
        print("\(name) is jumping with the ball")
    }
}

class TennisPlayer: Athlete {
    override func mobility() {
        print("\(name) is moving on the tennis court")
    }
    
    override func run() {
        print("\(name) is running on the court")
    }
    
    override func jump() {
        print("\(name) is leaping to hit the ball")
    }
}

class Equipment {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return name
    }
}

class Game {
    func startGame(team: [Athlete], with equipment: Equipment) {
        print("Game started!!!")
    }
}

let basketballPlayer = BasketballPlayer(name: "Mixa", lastName: "Jordan", gender: "Male", height: 6.7, uniform: "22", nationality: "USA", age: 30)

let footballPlayer = FootballPlayer(name: "Leon", lastName: "Messi", gender: "Male", height: 5.4, uniform: "10", nationality: "Argentina", age: 34)

let tennisPlayer = TennisPlayer(name: "Serjo", lastName: "Will", gender: "Male", height: 5.9, uniform: "18", nationality: "Malasia", age: 28)

let basketball = Equipment(name: "Basketball")
let football = Equipment(name: "Football")
let tennisBall = Equipment(name: "Tennis Ball")

let game = Game()

game.startGame(team: [basketballPlayer, footballPlayer, tennisPlayer], with: basketball)
