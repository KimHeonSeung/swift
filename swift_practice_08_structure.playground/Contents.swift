import UIKit

// 구조체의 정의 및 사용
// 구조체 - 다수개의 변수 및 함수(메소드)를 조합하여
//          새로운 데이터 타입을 생성하는 방법
/*
 struct 구조체 이름 {
    멤버필드(변수) ...
    멤버메소드 ...
 }
*/

// n이란 멤버필드와 겟터를 가진 구조체
struct struct_1 {
    var n: Int
    func getN() -> Int {
        return n
    }
}
// 직접 생성한 스트럭트 타입을 변수로 설정
// 구조체를 정의하면 자동으로 만들어지는 생성자(이니셜라이저)를 활용하여
// 초기화를 하면서 변수를 생성할 수 있다.
// - 단 하나라도 멤버필드가 선언되어 있는 경우
//      반드시 해당 멤버필드의 초기값을 지정해야만 에러가 발생하지 않는다.
var s1: struct_1 = struct_1(n: 10)
print("s1.n -> \(s1.n)")
print("s1.getN() -> \(s1.getN())")
s1.n = 100
print("s1.n -> \(s1.n)")
print("s1.getN() -> \(s1.getN())")

// 구조체의 변수와 클래스 변수의 차이점
// 구조체 변수는 값을 저장하고, 클래스 변수는 레퍼런스를 저장하는 변수다.
struct struct_2 {
    var n: Int
}
var s_original = struct_2(n: 10)
print(s_original.n)

// s_original 구조체 변수를 복사하여 새로운 구조체 변수가 생성되고
// s_copy는 새로운 구조체 변수를 사용하게 된다.
var s_copy = s_original
print("s_original.n -> \(s_original.n), s_copy.n -> \(s_copy.n)")

// 새롭게 생성된 구조체 변수의 값을 수정하는 코드
// (s_original의 구조체 변수에는 영향이 없다.
s_copy.n = 1000
print("s_original.n -> \(s_original.n), s_copy.n -> \(s_copy.n)")

// 구조체의 변수의 생성 방식에 따른 차이점
// 구조체는 객체지향 언어의 클래스와 유사하지만, swift 언어에서는 값의 형태로 변수가 생성됨
// var를 사용하여 구조체 변수를 생성하면 구조체 멤버의 값을 수정할 수 있지만
// let를 사용하여 구조체 변수를 생성하는 경우 구조체 멤버의 값을 수정할 수 없다.
struct struct_3 {
    var n: Int
}
var s3 = struct_3(n: 11)
print("s3.n -> \(s3.n)")
s3.n = 101
print("s3.n -> \(s3.n)")

let s3_let = struct_3(n: 11)
print("s3_let.n -> \(s3_let.n)")
// s3_let.n 변수는 상수이므로 내부의 데이터도 수젖ㅇ될 수 없다.
// s3_let.n = 101
// print("s3.n -> \(s3_let.n)")

// 구조체의 메소드를 활용한 멤버변수의 값 수정
// 구조체의 메소드에서 멤버변수의 값을 참조 및 반환하는 것에는 제약이 없다.
// EX) getter 메소드와 같은 역할
// 반면, 구조체의 메소드에서 멤버변수의 값을 수정하기 위해서는 mutating 키워드를
// 구조체의 메소드 선언부에 작성해줘야 한다.
// EX) setter 메소드와 같은 역할
struct struct_4 {
    var n: Int
    func getN() -> Int {
        return n
    }
    mutating func setN(number: Int) {
        // 구조체 멤버필드의 값을 수정하기 위해서는
        // 멤버필드의 접근에 self 키워드를 사용해야 한다.
        // self 키워드를 사용하여 값을 수정하기 위해서는
        // 함수의 선언부에 mutating 키워드를 선언해야만 한다.
        self.n = number
    }
}

var s4 = struct_4(n: 10)
print("s4.n -> \(s4.getN())")
s4.setN(number: 100)
print("s4.n -> \(s4.getN())")

// 구조체의 초기화 및 생성자
// 구조체 내부에 선언된 멤버가 옵셔널 변수가 아니라면 반드시 값을 저장해야 한다.
struct struct_5_optional {
    var name: String?
    // var age: Int
}
// 옵셔널 변수를 멤버로 가지는 구조체 변수는 멤버의 초기화 과정 없이 변수를 생성할 수 있다.
var s5_optional_1 = struct_5_optional()
var s5_optional_2 = struct_5_optional(name: "AAA")

struct struct_5_non_optional {
    var name: String
}
// 일반 변수를 멤버로 가지는 구조체 변수는 반드시 멤버를 초기화 해야만 변수가 생성된다.
// var s5_non_optional_1 = struct_5_non_optional()
var s5_non_optional_2 = struct_5_non_optional(name: "AAA")

struct struct_5_constructor {
    var name: String?
    // 생성자
    // 기본 생성자의 선언
    // 구조체 및 클래스의 생성자는 init 함수(메소드)
    init() {
        self.name = "empty"
    }
    // 생성자 오버로딩
    // 객체 생성에 필요한 매개변수가 존재하는 경우
    // init 메소드를 오버로딩하여 처리할 수 있다.
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        if let name = self.name {
            return name
        } else {
            return "nil"
        }
    }
}

var s5_1 = struct_5_constructor()
// print("s5_1.name -> \(s5_1.name!)")
print("s5_1.name -> \(s5_1.getName())")

var s5_2 = struct_5_constructor(name: "Hello")
// print("s5_2.name -> \(s5_2.name!)")
print("s5_2.name -> \(s5_2.getName())")

