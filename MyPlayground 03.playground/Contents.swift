import UIKit


//iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool


func IAmOlder( _ number1: Int, _ number2: Int) -> Bool {
    return number1 > number2
}

IAmOlder(40, 20)
IAmOlder(15, 35)



//yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль

func yearOfBirth(yourAge: Int, currentYear: Int) {
    let yearOfBirth = currentYear - yourAge
    print("Ти Народився у \(yearOfBirth) році")
}


yearOfBirth(yourAge: 26, currentYear: 2023)




//onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа

func onlyEvenNumbers(range: Range<Int>) {
    for number in range {
        if number % 2 == 0 {
            print(number)
        }
    }
}

//func onlyEvenNumbers(range:Range<Int>) {
//    var number = range.lowerBound
//    while number < range.upperBound {
//        if number % 2 == 0 {
//            print(number)
//        }
//        number += 1
//    }
//}



onlyEvenNumbers(range: 1..<10)






//getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає

func getSum(num1:Int,num2:Int,num3:Int,num4:Int) -> Int {
    let sum = num1 + num2
    let prod = sum * num3
    let remain = prod % num4
    
    return remain
}

let result = getSum(num1: 5, num2: 8, num3: 4, num4: 9)
print("Result\(result)")
