import UIKit

////////////////////////////////////////////////////////////
// 변수의 선언 1
// var 변수명 = 값
// 암시적 형변환을 지원하여 데이터 타입을 지정하지 않고 변수를 선언할 수 있음
var num1 = 10
print("num1 = \(num1)")

var str1 = "Hello, Swift~!"
print("str1 = \"\(str1)\"")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 변수의 선언 2
// var 변수명: 타입 = 값
// 명시적으로 변수의 타입을 선언하여 사용하는 방법
// 다른 프로그래밍 언어에서 사용되는 대다수의 자료형을 지원하고 있음
//  - Int, UInt, Float, Double, Character, String, Bool
var i: Int = 20
print(i)

// UInt 타입은 음수를 저장할 수 없고, 양수만 저장할 수 있음
var ui: UInt = 20
print(ui)

var f: Float = 1.579
print(f)

var d: Double = 105.5797979
print(d)

// 문자형의 자료형은 Character 이며, 하나의 문자를 쌍따옴표안에 정의
// 두개 이상의 문자가 대입되면 에러 발생
var c: Character = "A"
print(c)

var s: String = "Hello, Swift~!"
print(s)

var b1: Bool = true
print(b1)

var b2: Bool = false
print(b2)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 변수의 선언 및 사용 그리고 초기화
// 변수의 선언 시 타입을 지정하지 않는 경우 반드시 값을 대입해야함(선 초기화)
// 만약 변수를 선언한 이후, 따로 값을 지정하려는 경우(후 초기화)
// 반드시 타입을 지정해야야함

// 에러발생 코드
/*
var no_type_no_init
print(no_type_no_init)
no_type_no_init = 10
*/

// 변수의 선언 시, 타입을 지정하면 이후에 초기하를 할 수 있음
var type_no_init: Int
// 초기화가 되어 있지 않아 사용이 불가능
// print(type_no_init)
// 초기화 이후에는 사용이 가능
type_no_init = 10
print(type_no_init)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 변수의 선언 3
// let 변수명[: 타입] = 값
// 값을 변경할 수 없는 상수를 선언하여 사용하는 방법
let const_i: Int = 17
print(const_i)
// let 으로 선언된 변수는 값의 변경을 허용하지 않아 에러 발생
// const_i = 25

// 상수 변수의 선언 시, 타입을 지정하는 경우
// 초기화를 미룰 수 있습니다.
let const_d1: Double
const_d1 = 10.175
// let 으로 선언된 변수는 값의 변경을 허용하지 않아 에러 발생
//const_d1 = 20.75
print(const_d1)

// 상수 변수의 선언 시, 타입을 지정하지 않는 경우
// 반드시 초기화를 해야합니다.
// 초기화를 하지 않아 에러가 발생됨
// let const_d2
// 초기화를 하는 경우 자동으로 타입이 처리되며 상수로 선언됨
let const_d2 = 10.77
print(const_d2)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 변수의 선언 4
// 옵셔널(Optional) 변수
// 변수에 값이 존재하지 않을 수도 있는 경우 사용
// (null 값의 허용 여부를 의미)
// swift 의 모든 변수는 기본값으로 non-optional
// 옵셔널 변수의 선언
// var/let 변수명: 타입[?/!] = [값/nil]
//  - nil 값 : 기존의 Objective-c 에서의 nil, NIL, NULL, NSNULL
//            (다른 객체지향 언어의 null 값을 의미함)

// 옵셔널 변수의 선언
// 기존의 변수처럼 값을 저장할 수 있음
var optional_1: Int? = 10
// 옵셔널 변수는 값이 없다는 의미의 nil 값을 저장할 수 있음
var optional_2: Int? = nil
// 옵셔널 변수는 초기화 하지 않으면 nil 값을 저장함
var optional_3: Int?
print(optional_3)

// 옵셔널 변수는 기존의 자료형이 아닌 옵셔널 타입이 저장되어
// 아래의 optional_1 변수는 Int 티입이 아님
print(optional_1)
// 반면, nil 값의 경우 옵셔널 값이 아닌 nil 값이 반환
print(optional_2)

// 옵셔널 변수의 값을 대입받는 변수는 기본적으로 옵셔널 변수가 됨
var optional_target_1 = optional_1
print(optional_target_1)

// 옵셔널 변수의 값을 대입받는 변수에 타입이 선언되어 있는 경우 에러가 발생
// Int 와 Int? 는 서로 다른 타입임
//var optional_target_2: Int = optional_1

// 옵셔널 변수의 값을 대입받는 변수에 타입이 선언되어 있는 경우
// 옵셔널 변수에 ! 를 사용하여 에러를 방지할 수 있음
// 옵셔널 변수에 ! 를 사용하면 옵셔널 변수의 내부 값을 강제로 추출할 수 있음
var optional_target_2: Int = optional_1!
print(optional_target_2)

// 옵셔널 변수의 값을 추출하기 위해서 ! 를 사용하는 경우
// 만약 nil 값을 가진다면 런타임 에러가 발생됨
// 아래의 코드는 런타임 에러가 발생됨
//var optional_target_3: Int = optional_2!

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 1
// 옵셔널 바인딩 (Optional Binding)
//  - 값의 존재 유무를 확인한 후 값을 추출하는 방법
// if [let/var] 변수명 = 옵셔널변수명 {
//      실행코드 ...
// }

// optional_1 변수는 10을 저장하고 있기 때문에
// 아래의 if 문이 정상적으로 실행됨
if var checkOptional = optional_1 {
    print(checkOptional)
    checkOptional = 100
    print(checkOptional)
    print(optional_1)
}
// optional_1 변수는 10을 저장하고 있기 때문에
// 아래의 if 문이 정상적으로 실행됨
if let checkOptional = optional_1 {
    print(checkOptional)
    // let 으로 옵셔널 벼수를 추출하는 경우 값의 수정 불가
    // checkOptional = 100
    print(checkOptional)
}

// optional_2 변수는 nil을 저장하고 있기 때문에
// 아래의 if 문이 정상적으로 실행되지 않음
if let checkOptional = optional_2 {
    print("optional_2 -> \(checkOptional)")
} else {
    print("nil 값으로 인해 실행이 되지 않음")
}

// 옵셔널 바인딩의 if 문에 , 를 사용하여 조건을 추가적으로 기술할 수 있음
if let checkOptional = optional_1, checkOptional >= 30 {
    print("optional_1 -> \(checkOptional)")
} else {
    print("nil 값 또는 조건식의 부적합으로 인해 실행이 되지 않음")
}

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 2
// 옵셔널 체이닝 (Optional Chaining)
// 클래스 이후에 언급함...

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 3
// 단순 비교를 통한 nil 값 확인
if optional_2 == nil {
    print("optional_2 는 nil 값을 가지고 있음")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 변수의 타입 확인
// type 메소드 사용
// type(변수명)
// var i: Int = 10
var type_i = type(of: i)
print("i 변수의 타입 : \(type_i)")
var type_1 = type(of: 1)
print("정수 1의 타입 : \(type_1)")

// 동일 타입의 여부를 확인할 수 있음
print(type_i == type_1)

var type_option = type(of: optional_1)
print("type_option의 타입 : \(type_option)")
////////////////////////////////////////////////////////////






