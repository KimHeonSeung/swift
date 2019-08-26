import UIKit

var str = "Hello, playground"

// 변수의 선언 1
// var 변수명 = 값
// 암시적 형변환을 지원하여 데이터 타입을 지정하지 않고 변수를 선언할 수 있다.
var num1 = 10
print("num1 = \(num1)")

var str1 = "Hello, Swift"
print("str1 = \" \(str1)\" ")

// 변수의 선언 2
// var 변수명: 타입 = 값
// 명시적으로 변수의 타입을 선언하여 사용하는 방법
// 다른 프로그래밍 언어에서 사용되는 대다수의 자료형을 지원하고 있다.
// - Int, UInt, Float, Double, Character, String, Bool
var i: Int = 22
print(i)

// UInt 타입은 음수를 저장할 수 없고, 양수만 저장할 수 있다.
var ui: UInt = 33 // 양수만 가능
print(ui)

var f: Float = 1.579
print(f)

var d: Double = 3.141592
print(d)

// swift에서 따옴표, 쌍따옴표 구분은 없다.
// 문자형의 자료형은 Character 이며, 하나의 문자를 쌍따옴표 안에 정의
// 두개 이상의 문자가 대입되면 에러 발생
var c: Character = "A" // "AB" 로하면 에러 발생
print(c)

var s: String = "ABC"
print(s)

var b: Bool = true
print(b)


// 변수의 선언 및 사용 그리고 초기화
// 변수의 선언 시 타입을 지정하지 않는 경우 반드시 값을 대입하여야 한다. (선 초기화)
// 만약 변수를 선언한 후, 따로 값을 지정하려는 경우 (후 초기화) 반드시 타입을 지정해야한다.
/*
에러 발생 코드
var no_type_no_init
print(no_type_no_init)
no_type_no_init = 10
*/

var type_no_init: Int
// 초기화가 되어있지 않아 사용 불가능
// print(type_no_init)
type_no_init = 10
print(type_no_init)

// 변수의 선언 3
// let 변수명[: 타입] = 값
// 값을 변경할 수 없는 상수를 선언하여 사용하는 방법
let const_i: Int = 123
print(const_i)
// let으로 선언된 변수는 값의 변경을 허용하지 않아 에러 발생
// const_i = 222

// 상수 변수의 선언 시, 타입을 지정하는 경우
// 초기화를 미룰 수 있다.
let const_d1: Double
const_d1 = 123.456
// let으로 선언된 변수는 값의 변경을 허용하지 않아 에러 발생
// const_d1 = 456.789 <- 이미 한번 고정해서 바꿀 수 없다.
print(const_d1)

// 상수 변수의 선언 시, 타입을 지정하지 않는 경우
// 반드시 초기화를 해야한다.
// 아래는 초기화를 하지 않아 에러 발생
// let const_d2
// const_d2 = 123.456
// 초기화를 하는 경우 자동으로 타입이 처리되어 상수로 선언된다.
let const_d2 = 10.235
print(const_d2)

// 변수의 선언 4
// 옵셔널(optional) 변수
// 변수에 값이 존재하지 않을 수도 있는 경우
// (null 값의 허용 여부를 의미)
// swift 의 모든 변수는 기본 값으로 non-optional
// 옵셔널 변수의 선언
// var/let 변수명: 타입[?/!] = [값/nil]
// - nil 값 : 기존의 Object-c 에서의 nil,NIL,NULL,NSNULL
//              (다른 객체지향 언어의 null값을 의미한다.)

// 옵셔널 변수의 선언
// 기존의 변수처럼 값을 저장할 수 있다.
var optional_1: Int? = 10
// 옵셔널 변수는 값이 없다는 의미의 nil 값을 저장할 수 있다.
var optional_2: Int? = nil
// 옵셔널 변수는 초기화하지 않으면 nil값을 저장한다.
var optional_3: Int?
print(optional_3)

// 아래의 변수는 Int 타입이 아님
print(optional_1)
// 반면, nil 값의 경우 옵셔널이 아닌 nil값 반환
print(optional_2)

// 옵셔널 변수의 값을 대입받는 변수는 기본적으로 옵셔널 변수가 된다.
var optional_target_1 = optional_1
print(optional_target_1)

// 옵셔널 변수의 값을 대입받는 변수에 타입이 선언되어있는 경우 에러가 발생
// Int와 Int?는 서로 다른타입이다.
// var optional_target_2: Int = optional_1
var optional_target_2: Int? = optional_1
print(optional_target_2)

// 옵셔널 변수의 값을 대입받는 변수에 타입이 선언되어있는 경우
// 옵셔널 변수에 ! 를 사용하여 에러를 방지할 수 있다.
// 옵셔널 변수에 ! 를 사용하면 옵셔널 변수의 내부 값을 강제로 추출할 수 있다.
var optional_target_3: Int = optional_1!
print(optional_target_3)

// nil인 옵셔널 변수의 내부 값을 강제로 추출하면 에러 발생
// 옵셔널 변수의 값을 추출하기 위해 ! 를 사용하는 경우
// 만약 nil 값을 가진다면 런타임 에러가 발생
// 아래의 코드는 런타임 에러가 발생
// var optional_target_4: Int = optional_2!

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 1
// 옵셔널 바인딩 (Optional Binding)
// - 값의 존재 유무를 확인한 후 값을 추출하는 방법
// if [let/var] 변수명 = 옵셔널변수명 {
//      실행코드 ...
// }
// 옵셔널 변수가 nil 이면 if문의 실행코드가 실행되지 않는다.
if var checkOptional = optional_1 {
    print(checkOptional)
    checkOptional = 100
    print(checkOptional)
    print(optional_1)
}
if let checkOptional = optional_1 {
    print(checkOptional)
    // let 으로 옵셔널 변수를 추출하는 경우 값으 수정 불가 !
    // checkOptional = 100
    print(optional_1)
}
// optional_2 변수는 nil을 저장하고 있기 때문에
// 아래의 if 문이 정상적으로 실행되지 않는다.
if let checkOptional = optional_2 {
    // optional_2 값이 nil이므로 실행되지 않는다.
    print("optional_2 -> \(checkOptional)")
} else {
    // optional 변수가 nil 일때 실행되는곳
    print("nil 값으로 인해 실행이 되지 않음")
}

// 옵셔널 바인딩의 if 문에 , 를 사용하여 조건을 추가적으로 기술할 수 있다.
if let checkOptional = optional_1, checkOptional > 30 {
    // optional_2 값이 nil이므로 실행되지 않는다.
    print("optional_1 -> \(checkOptional)")
} else {
    print("nil 값 또는 조건식의 부적합으로 인해 실행이 되지 않음")
}

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 2
// 옵셔널 체이닝 (Optional Chaining)
// 클래스 이후에 언급..

// 옵셔널 변수의 값을 기본 타입으로 추출하기 위한 방법 3
// 단순 비교를 통한 nil 값 확인
if optional_2 == nil {
    print("optional_2는 nil 값을 가지고 있다.")
}

// 변수의 타입 확인
// type 메소드 사용
// type(변수명)
// var i: Int = 10
var type_i = type(of: i)
print("i 변수의 타입 : \(type_i)")
var type_1 = type(of: 1)
print("정수 1의 타입 : \(type_1)")
print(type_i == type_1)

var type_optional = type(of: optional_1)
print("type_optional의 타입 : \(type_optional)")
