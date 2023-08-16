
class Athlete {
    var name: String
    var lastName: String
    var gender: String
    var height: Double
    var uniform: String
    var nationality: String
    var age: Int
    
    init(name: String, lastName: String, gender: String, height: Double, uniform: String, nationality: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.gender = gender
        self.height = height
        self.uniform = uniform
        self.nationality = nationality
        self.age = age
    }
    
    func mobility() {
       
    }
    
    func run() {
      
    }
    
    func jump() {
       
    }
}

class Equipment {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

enum EquipmentType: String {
    case ball
    case racket
    case sword
    case card
    case fencing
    case poker
    case chess
}

class Team {
    var athletes: [Athlete] = []
    
    func addAthlete(_ athlete: Athlete) {
        athletes.append(athlete)
    }
}

class Sport {
    var team: Team?
    var equipment: EquipmentType?
    
    init(team: Team?, equipment: EquipmentType?) {
        self.team = team
        self.equipment = equipment
    }
    
    func startGame() {
        if let athletes = team?.athletes, let equipment = equipment {
            print("Game started with \(athletes.count) athletes using \(equipment.rawValue)")
        } else {
            print("Game cannot start ")
        }
    }
}

class FencingPlayer: Athlete {
    override func mobility() {
        print("\(name) is moving ")
    }
    
    override func run() {
        print("\(name) is advancing ")
    }
    
    override func jump() {
      
    }
}

class PokerPlayer: Athlete {
 
    
    func bluff() {
        print("\(name) is trying to bluff")
    }
    
    func fold() {
        print("\(name) is folding")
    }
    
    func call() {
        print("\(name) is calling")
    }
}

class ChessPlayer: Athlete {

    
    func movePiece() {
        print("\(name) is moving ")
    }
    
    func check() {
        print("\(name) has check")
    }
    
    func checkmate() {
        print("\(name) has checkmated ")
    }
}


let basketballPlayer = Athlete(name: "Mixa", lastName: "Jordan", gender: "Male", height: 6.7, uniform: "22", nationality: "USA", age: 30)
let footballPlayer = Athlete(name: "Leon", lastName: "Messi", gender: "Male", height: 5.4, uniform: "10", nationality: "Argentina", age: 34)
let tennisPlayer = Athlete(name: "Serjo", lastName: "Will", gender: "Male", height: 5.9, uniform: "18", nationality: "Malaysia", age: 28)

// Create teams
let brooklynNets = Team()
brooklynNets.addAthlete(basketballPlayer)

let footballTeam = Team()
footballTeam.addAthlete(footballPlayer)

let tennisTeam = Team()
tennisTeam.addAthlete(tennisPlayer)


let basketballEquipment = Equipment(name: "Basketball")
let footballEquipment = Equipment(name: "Football")
let tennisBallEquipment = Equipment(name: "Tennis Ball")
let fencingEquipment = Equipment(name: "Fencing Sword")
let pokerEquipment = Equipment(name: "Poker Cards")
let chessEquipment = Equipment(name: "Chess Board")


let basketballGame = Sport(team: brooklynNets, equipment: .ball)
let footballGame = Sport(team: footballTeam, equipment: .sword)
let tennisGame = Sport(team: tennisTeam, equipment: .racket)
let fencingGame = Sport(team: Team(), equipment: .fencing)
let pokerGame = Sport(team: Team(), equipment: .poker)
let chessGame = Sport(team: Team(), equipment: .chess)


basketballGame.startGame()
footballGame.startGame()
tennisGame.startGame()
fencingGame.startGame()
pokerGame.startGame()
chessGame.startGame()
