import UIKit

// Closure(클로저)
// 중괄호 내부에 정의된 실행 가능한 코드 블럭
/*
 { (매개변수 ...) -> 리턴값의타입 in
    클로저의 실행코드 ...
 }
*/

// 문자열 입력변수를 하나 입력받아 문자열을 반환할 수 있는 클로저 변수의 선언
var simpleClosure = {
    (name: String) -> String in
    return "Hello \(name)"
}
print(simpleClosure("TJE"))

// 문자열 2개를 매개변수로 입력받아 문자열을 반환하는
// 클로저를 생성하여 리턴할 수 있는 함수 선언
// (String, String) -> String인 클로저를 리턴하는 함수
func closureGenerator() -> (String, String) -> String {
    return {
        (first_name: String, last_name:String) -> String in
            return "Hi ~ \(first_name) \(last_name)"
    }
}
// 클로저를 변수에 저장한 후, 함수 호출과 같이 사용되는 예제
var hiClosure = closureGenerator()
print(hiClosure("hs", "kim"))

func hiFunction(first_name: String, last_name: String) -> String {
    return "Hi ~ \(first_name) \(last_name)"
}
print(hiFunction(first_name: "Heon", last_name: "Gim"))

// Closure (클로저)의 활용 예제
var array: Array<Int> = [3, 7, 1, 9, 11, 2, 8]
print(array)
print(array.sorted {$0 < $1})
print(array.sorted {$0 > $1})
print(array.filter {$0 % 2 == 0})

// 클로저를 작성하는 방법 1
// - 모든 문법 요소를 포함하여 작성하는 방법
func calculatorGenerate_1() -> (Int, Int) -> String {
    return{ (first_number: Int, second_number: Int) -> String in
        return "\(first_number) + \(second_number) = \(first_number + second_number)"
    }
}
var sum_1 = calculatorGenerate_1()
print(sum_1(10,20))

// 클로저를 작성하는 방법 2
// - 타입 유추에 의해 매개변수 및 리턴되는 값의 타입을 생략
func calculatorGenerate_2() -> (Int, Int) -> String {
    // calculatorGenerate_2 의 리턴 타입에 명시된 (Int, Int) 에 의해
    // 클로저의 매개변수 타입을 생략할 수 있다.
    return{ (first_number, second_number) -> String in
        return "\(first_number) + \(second_number) = \(first_number + second_number)"
    }
}
var sum_2 = calculatorGenerate_2()
print(sum_2(10,20))

// 클로저를 작성하는 방법 3
// - 타입 유추에 의해 매개변수 및 리턴타입을 생략
func calculatorGenerate_3() -> (Int, Int) -> String {
    // calculatorGenerate_3 의 리턴 타입에 명시된 (Int, Int) -> String 에 의해
    // 클로저의 매개변수rk 2개인 것을 확인할 수 있으므로 매개변수의 선언과 리턴값의 타입을 생략할 수 있다.
    return {
        return "\($0) + \($1) = \($0 + $1)"
    }
}
var sum_3 = calculatorGenerate_3()
print(sum_3(100,200))

// 클로저를 작성하는 방법 4
// - 클로저의 실행코드가 한줄로 구성되었다면, return 키워드를 생략할 수 있다.
func calculatorGenerate_4() -> (Int, Int) -> String {
    return {
        "\($0) + \($1) = \($0 + $1)"
    }
}
var sum_4 = calculatorGenerate_4()
print(sum_4(1001,2001))

// 함수의 매개변수로 Closure (클로저)를 전달하는 방법
// Int 타입 2개를 매개변수로 받는 클로저를 매개변수로 사용하는 방법
func calculator( n1: Int, n2: Int, c: (Int, Int) -> String) {
    print(c(n1,n2))
}
calculator(n1: 10, n2: 5, c: {
    (num1: Int, num2: Int) -> String in
    return "\(num1) + \(num2) = \(num1 + num2)"
})
calculator(n1: 101, n2: 51, c: {
    (num1, num2) in
    return "\(num1) + \(num2) = \(num1 + num2)"
})
calculator(n1: 110, n2: 115, c: {
    return "\($0) + \($1) = \($0 + $1)"
})
calculator(n1: 310, n2: 315, c: {
    "\($0) + \($1) = \($0 + $1)"
})

// 함수의 마지막 매개변수가 클로저라면
// 클로저는 다른 매개변수들과 별도로 전달할 수 있다.
calculator(n1: 3101, n2: 3151) {"\($0) + \($1) = \($0 + $1)"}
