import Foundation


var myArray = [1,2,3,4,5,6,7,8,9,10]
var myArray2 = [4,3,6,7,9,24,54,66,71,84]

/* 1. Написать функцию, которая определяет, четное число или нет. */

func numEven( array:inout [Int]) {
    var arrayEven:[Int] = []
    
    for num in array {
        if num % 2 == 0 {
            arrayEven.append(num)
        }
    }
    array = arrayEven
    print("Четные числа \(array)")
}

numEven(array: &myArray)


/* 2. Написать функцию, которая определяет, делится ли число без остатка на 3. */

func numOdd(array: inout [Int]) {
    var arrayOdd:[Int] = []
    
    for num in array {
        if num % 3 == 0 {
            arrayOdd.append(num)
        }
    }
    array = arrayOdd
    print("Числа делящияся на 3 без остатка \(array)")
}

numOdd(array: &myArray2)

/* 3. Создать возрастающий массив из 100 чисел. */

var array100: [Int] = []
var num = 1

while num <= 100 {
    array100.append(num)
    num += 1
}

/* 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3. */

func removeEvenAndOdd(array: inout [Int]) {

    array = array.filter {$0 % 2 != 0 && $0 % 3 != 0}
    print(array)

}
removeEvenAndOdd(array: &array100)

/* 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. */

var fibonachi: [Int] = []

func arrayFib(num: Int, fib: inout [Int]) {
    var num1 = num
    var num2 = num
    var num3 = num
    while fib.count != 50 {
        num3 = num1 + num2
        num1 = num2
        num2 = num3
        fib.append(num2)
    }
    print(fib)
}

arrayFib(num: 1, fib: &fibonachi)

/* 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
 
 a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
 b. Пусть переменная p изначально равна двум — первому простому числу.
 c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
 d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
 e. Повторять шаги c и d, пока возможно.
 
 */

var numA = 2

var array6:[Int] = []
while array6.count < 100 {
    array6.append(numA)
    numA += 1
}

func isNumberPrime(number: inout [Int]) {
    for num in number {
        for i in 2..<num {
            if(num % i == 0){
                number.remove(at: number.firstIndex(of: num)!)
                break
            }
        }
    }
    print(number)
}

isNumberPrime(number: &array6)



