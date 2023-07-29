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
    print("Ти НАродився у \(yearOfBirth) році")
}


yearOfBirth(yourAge: 26, currentYear: 2023)




//onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа










//getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає
