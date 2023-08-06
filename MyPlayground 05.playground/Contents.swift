
//conlyThree - приймає рейндж, пробігається по ньому і повертає масив тільки з кратними числами 3


func onlyThree(in range: ClosedRange<Int>) -> [Int] {
    var result: [Int] = []
    
    for number in range {
        if number % 3 == 0 {
            result.append(number)
        }
    }
    return result
}

let inputRange = 1...20
let multiplesOfThree = onlyThree(in: inputRange)

print(multiplesOfThree)


func onlyThree(in range: ClosedRange<Int>) -> [Int] {
    return range.compactMap { $0 % 3 == 0 ? $0 : nil}
}

let inputRange = 1...20

let multiThree = onlyThree(in: inputRange)

print(multiThree)


//printDuplicates - приймає два масиви, виводить у консоль лише числа які є у першому, та другому


func printDuplicates(array1: [Int], array2: [Int]) {
    for number1 in array1 {
        if array2.contains(number1) {
            print(number1)
        }
    }
}

let array1 = [1,3,5,7,9]
let array2 = [2,4,7,5,9]


printDuplicates(array1: array1, array2: array2)


func printDuplicates(array1: [Int], array2: [Int]) {
    let duplicates = array1.filter{array2.contains($0)}
    duplicates.forEach{print($0)}
}
let array1 = [1,2,3,5,7,8]
let array2 = [3,4,5,6,7,8]

printDuplicates(array1: array1, array2: array2)



//symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)
//


func sumbolCount(in inputString: String) -> [Character:Int] {
    var counts: [Character: Int] = [:]
    inputString.forEach {chart in
        counts[chart, default: 0] += 1
    }
    return counts
}
let input = "Hello my"
let counts = sumbolCount(in: input)

for(chart, count) in counts {
    print("Symbol \(chart) occurs \(count) times")
}

func symbolCount(in inputString: String) -> [Character: Int] {
    return inputString.reduce(into: [:]) { counts, chart in
        counts[chart, default: 0] += 1
    }
}

let input = "Home_Work"
let counts = symbolCount(in: input)

for (chart, count) in counts {
    print("Symbol '\(chart)' occurs \(count) times.")
}




//sameCharacters - приймає дві строки та completion (кложуру), після обробки строк, кложура приймає два набори символів і виводить у консоль тільки ті, що повторюються в обох рядках.





func printDuplicates(array1: [Int], array2: [Int]) {
    let duplicates = array1.filter { array2.contains($0) }
    duplicates.forEach { print($0) }
}

func symbolCount(in inputString: String) -> [Character: Int] {
    return inputString.reduce(into: [:]) { counts, char in
        counts[char, default: 0] += 1
    }
}


func sameCharacters(string1: String, string2: String, completion: ([Character]) -> Void) {
    let set1 = Set(string1)
    let set2 = Set(string2)
   
        let comCharacters = Array(set1.intersection(set2))
        
        completion(comCharacters)
    }
    
    let string1 = "Say Hello"
    let string2 = "World The Best"
    
    sameCharacters(string1: string1, string2: string2) { comCharacters in
        print("Go characters:", comCharacters)
    }


