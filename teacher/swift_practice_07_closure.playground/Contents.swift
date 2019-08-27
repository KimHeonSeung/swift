import UIKit

////////////////////////////////////////////////////////////
// Closure (클로저)
// 중괄호 내부에 정의된 실행 가능한 코드 블럭
/*
 { (매개변수 ... ) -> 리턴값의타입 in
    클로저의 실행코드 ...
 }
 */

// 문자열 매개변수를 입력받아 문자열 반환할 수 있는 클로저 변수의 선언
var simpleClosure = {
    (name: String) -> String in
        return "Hello \(name)"
}

print(simpleClosure("TJE"))

// 문자열 2개를 매개변수로 입력받아 문자열을 반환하는
// 클로저를 생성하여 리턴할 수 있는 함수 선언
func closureGenerator() -> (String, String) -> String {
    return {
        (first_name: String, last_name: String) -> String in
            return "Hi~! \(first_name) \(last_name)"
    }
}

// 클로저를 변수에 저장한 후, 함수 호출과 같이 사용되는 예제
var hiClosure = closureGenerator()
print(hiClosure("yongseong", "cho"))

// swift의 함수(메소드)는 명시적인 클러저로 정의됩니다.
func hiFunction(first_name: String, last_name: String) -> String {
    return "Hi~! \(first_name) \(last_name)"
}
print(hiFunction(first_name:"yongseong", last_name:"cho"))
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Closure (클로저)의 활용 예제

var array: Array<Int> = [3,1,7,9,11,2,8]
print(array)

print(array.sorted {$0 < $1})
print(array.sorted {$0 > $1})
print(array.filter {$0 % 2 == 0})
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Closure (클로저) 작성 방법

// 클로저를 작성하는 방법 1
// - 모든 문법 요소를 포함하여 작성하는 방법
func calculatorGenerate_1() -> (Int, Int) -> String {
    return { (first_number: Int, seconde_number: Int) -> String in
        return "\(first_number) + \(seconde_number) = \(first_number + seconde_number)"
    }
}
var sum_1 = calculatorGenerate_1()
print(sum_1(10, 20))

// 클로저를 작성하는 방법 2
// - 타입 유추에 의해서 매개변수 및 리턴되는 값의 타입을 생략
func calculatorGenerate_2() -> (Int, Int) -> String {
    // calculatorGenerate_2 의 리턴 타입에 명시된 (Int, Int) 에 의해서
    // 클로저의 매개변수 타입을 생략할 수 있음
    return { (first_number, seconde_number) in
        return "\(first_number) + \(seconde_number) = \(first_number + seconde_number)"
    }
}
var sum_2 = calculatorGenerate_2()
print(sum_2(10, 20))

// 클로저를 작성하는 방법 3
// - 타입 유추에 의해서 매개변수와 리턴타입 선언을 생략
func calculatorGenerate_3() -> (Int, Int) -> String {
    // calculatorGenerate_3 의 리턴 타입에 명시된 (Int, Int) -> String 에 의해서 클로저의 매개변수가 2개인 것을 확인할 수 있으므로 매개변수의 선언과 리턴값의 타입을 생략할 수 있음
    return {
        return "\($0) + \($1) = \($0 + $1)"
    }
}
var sum_3 = calculatorGenerate_3()
print(sum_3(100, 200))

// 클로저를 작성하는 방법 4
// - 클로저의 실행코드가 한줄로 구성되었다면
//   return 키워드를 생략할 수 있습니다.
func calculatorGenerate_4() -> (Int, Int) -> String {
    return {
        "\($0) + \($1) = \($0 + $1)"
    }
}
var sum_4 = calculatorGenerate_4()
print(sum_4(10, 20))
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 함수의 매개변수로 Closure (클로저)를 전달하는 방법

// Int 타입 2개를 매개변수로 받는 클로저를 매개변수로 사용하는 방법
func calculator( n1: Int, n2: Int, c: (Int, Int) -> String ) {
    print(c(n1, n2))
}

calculator(n1: 17, n2: 22, c: {
    (num1: Int, num2: Int) -> String in
        return "\(num1) + \(num2) = \(num1 + num2)"
})

calculator(n1: 170, n2: 220, c: {
    (num1, num2) in
        return "\(num1) + \(num2) = \(num1 + num2)"
})

calculator(n1: 1700, n2: 2200, c: {
    return "\($0) + \($1) = \($0 + $1)"
})

calculator(n1: 17000, n2: 22000, c: {
    "\($0) + \($1) = \($0 + $1)"
})

// 함수의 마지막 매개변수가 클로저라면
// 클로저는 다른 매개변수들과 별도로 전달할 수 있습니다.
calculator(n1: 170000, n2: 220000) {"\($0) + \($1) = \($0 + $1)"}
////////////////////////////////////////////////////////////
