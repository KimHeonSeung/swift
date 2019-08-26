import UIKit

////////////////////////////////////////////////////////////
// 한줄의 문자열 데이터를 변수에 저장하는 방법
// var 변수명 = "값"
// var 변수명: String = "값"
var str1 = "Hello"

var str2: String
str2 = " Swift~!"

print(str1 + str2)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 여러줄의 문자열 데이터를 변수에 저장하는 방법
// var 변수명 = """
//  문자열1
//  문자열2
//  ...
// """
// var 변수명: String = """
//  문자열1
//  문자열2
//  ...
// """

var str3 = """
H
E
L
L
O
"""
var str4: String
str4 = """
S
W
I
F
T
~
!
"""

print(str3 + str4)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 빈 문자열 변수의 초기화 및 확인 방법
// var 변수명 = ""
// var 변수명 = String()
// var 변수명: String = ""
// var 변수명: String = String()

var str5 = ""
var str6 = String()
var str7: String
str7 = ""
var str8: String
str8 = String()

if str5.count == 0 {
    print("str5 변수는 빈 문자열 입니다.")
} else {
    print("str5 -> \(str5)")
}

if str5.isEmpty {
    print("str5 변수는 빈 문자열 입니다.")
} else {
    print("str5 -> \(str5)")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 결합
// +=, +, String Interpolation -> \() 을 사용
var strOrigianal_1 = "Hello"
strOrigianal_1 += " Swift~!"
print(strOrigianal_1)

var strPart_1 = "Hello"
var strPart_2 = " Swift~!"
var strPart_Full = strPart_1 + strPart_2
print(strPart_Full)

var n1 = 13
var n2 = 7
var sum = n1 + n2
//var strSum = n1 + " + " + n2 + " = " + sum
var strInterpolation = "\(n1) + \(n2) = \(sum)"
print(strInterpolation)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 데이터 추가
// append 메소드 활용

var strAddress = "서울시 "
strAddress.append("서대문구 ")
strAddress.append("신촌 ")
print(strAddress)
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 길이
// count 활용
print("\(strAddress) 의 길이는 \(strAddress.count) 입니다.")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 비교
// ==, != 연산자 활용
var strEquals_1 = "Hello"
var strEquals_2 = "Hello "
if strEquals_1 == strEquals_2 {
    print("두 문자열은 같습니다.")
} else {
    print("두 문자열은 다릅니다.")
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 변환
// 문자열 -> 정수/실수

var strInt = "123"
// 문자열로 저장된 숫자를 Int 타입으로 변환
var num1 = Int(strInt)
// 정수로 변경된 타입은 옵셔널 타입
print(num1)
// 실제 정수의 값을 추출하는 예제
if num1 != nil {
    print(num1!)
}

// double 타입의 형변환을 연습하세요.
var strDouble = "505.171"
var num2 = Double(strDouble)
print(num2)
if num2 != nil {
    print(num2!)
}

// 문자열로 저장된 숫자를 Int 타입으로 변환
// 문자열로 저장된 숫자가 정수형이 아닌 경우 Int는 nil 값을 반환
var num3 = Int(strDouble)
// 정수로 변경된 타입은 옵셔널 타입 nil 값이 확인됨
print(num3)
// nil 값으로 인하여 조건식이 false
if num3 != nil {
    print(num3!)
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 문자열 변환
// 정수/실수 -> 문자열

var num4 = 153
// 정수를 문자열 값으로 변환
var strNum4 = String(num4)
print("strNum4 = " + strNum4)

var num5 = 117.975
// 실수를 문자열 값으로 변환
var strNum5 = String(num5)
print("strNum5 = " + strNum5)

var num6: Int? = 531
// 옵셔널 타입의 정수를 문자열로 변경하기 위해서는 !를 사용해야함
//var strNum6 = String(num6)
var strNum6 = String(num6!)
print("strNum6 = " + strNum6)

// 옵셔널 변수의 선언 시, ! 를 사용하면 값의 저장을 보장하기 때문에
// 형변환 시, !를 생략할 수 있음
var num7: Double! = 350.773
var strNum7 = String(num7)
print("strNum7 = " + strNum7)
////////////////////////////////////////////////////////////


