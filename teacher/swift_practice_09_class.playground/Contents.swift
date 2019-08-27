import UIKit

////////////////////////////////////////////////////////////
// 클래스의 정의 및 사용
// 클래스 - 구조체와 마찬가지로 다수 개의 변수 및 함수(메소드)를 조합하여
//        새로운 데이터 타입을 생성하는 방법
// 클래스의 변수와 구조체 변수가 다른 점은
// 1. 클래스의 변수는 레퍼런스 변수
// 2. 클래스는 상속이 가능

/*
 class 클래스이름 {
     멤버필드(변수) ...
     멤버메소드 ...
 }
 */

class Class_01 {
    var name: String?
    func display() {
        if let temp = name {
            print("name -> \(temp)")
        } else {
            print("name 값이 초기화되지 않았습니다.")
        }
    }
}

var c_01 = Class_01()
c_01.display()
c_01.name = "ABC"
c_01.display()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스의 정의 및 사용
// 클래스의 멤버들은 반드시 초기화가 되어야 합니다.
// 1. 멤버필드의 선언 시 초기화
// 2. 생성자(init)에서 초기화
// 3. 옵셔널 변수는 초기화하지 않으면 nil 값을 가지므로
//    초기화하지 않아도 됩니다.

class Class_02 {
    var n1: Int = 10
    var n2: Int
    var n3: Int?
    
    init() {
        n2 = 20
    }
    
    func display() {
        print("n1 = \(n1), n2 = \(n2), n3 = \(n3)")
    }
}

var c_02 = Class_02()
c_02.display()

// 생성자 오버로딩
// 클래스의 객체를 생성하는 방식에 따라 init 메소드를 오버로딩하여
// 다양한 형태로 객체를 생성할 수 있음
class Class_03 {
    var n1: Int
    var n2: Int
    var n3: Int
    
    init() {
        n1 = 0
        n2 = 0
        n3 = 0
    }
    
    init(n1: Int) {
        self.n1 = n1
        n2 = 0
        n3 = 0
    }
    
    init(n2: Int) {
        n1 = 0
        self.n2 = n2
        n3 = 0
    }
    
    init(n3: Int) {
        n1 = 0
        n2 = 0
        self.n3 = n3
    }
    
    init(n1: Int, n2: Int, n3: Int) {
        self.n1 = n1
        self.n2 = n2
        self.n3 = n3
    }
    
    func display() {
        print("n1 = \(n1), n2 = \(n2), n3 = \(n3)")
    }
}

var c_03 = Class_03(n3: 10)
c_03.display()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스 변수는 레퍼런스를 저장하는 변수
// 구조체 변수는 값을 저장하고, 클래스 변수는 레퍼런스를 저장하는 변수입니다.

struct Struct_04 {
    var num: Int
}
// 구조체 변수는 값을 저장하는 타입으로, 아래의 s_04_origianl과 s_04_copy 변수는
// 서로 다른 구조체 변수를 사용합니다.
var s_04_origianal = Struct_04(num: 15)
var s_04_copy = s_04_origianal
print("origianal.num -> \(s_04_origianal.num), copy.num -> \(s_04_copy.num)")

// 새롭게 생성된 구조체 변수의 값을 수정하는 코드
// (s_04_origianal의 구조체 변수에는 영향이 없습니다.)
s_04_copy.num = 100
print("origianal.num -> \(s_04_origianal.num), copy.num -> \(s_04_copy.num)")

class Class_04 {
    var num: Int
    init(num: Int) {
        self.num = num
    }
}

// 클래스 변수는 레퍼런스를 저장하는 타입으로, 아래의 c_04_origianal과
// c_04_copy 변수는 서로 동일한 객체를 참조합니다.
var c_04_origianal = Class_04(num: 15)
var c_04_copy = c_04_origianal
print("origianal.num -> \(c_04_origianal.num), copy.num -> \(c_04_copy.num)")

// 동일한 객체를 참조하는 c_04_origianal, c_04_copy 이므로
// c_04_copy를 사용하여 num의 값을 수정하면 c_04_origianal 변수를 사용해도
// 수정된 값을 확인할 수 있습니다.
c_04_copy.num = 100
print("origianal.num -> \(c_04_origianal.num), copy.num -> \(c_04_copy.num)")
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스의 상속
// 부모클래스의 모든 멤버 필드/함수(메소드)를 재활용하기 위한 방법
/*
 class 자식클래스이름 : 부모클래스이름 {
     멤버필드(변수) ...
     멤버메소드 ...
 }
 */
// 부모 클래스 Animal_01
class Animal_01 {
    var color: String = "white"
    func sound() {
        print("소리를 냅니다...")
    }
}
// Animal_01 클래스를 상속받는 Dog_01 클래스를 정의
// 부모에서 물려받는 color 필드, sound 메소드를 사용할 수 있습니다.
class Dog_01 : Animal_01 {
    var age: Int = 11
}
var dog_01 = Dog_01()
print("dog_01.color -> \(dog_01.color)")
print("dog_01.age -> \(dog_01.age)")
dog_01.sound()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스의 상속
// 상속관계를 구현하고 있는 클래스의 객체 생성
// 생성자 오버로딩과 override 키워드

class Animal_02 {
    var color: String
    init(color:String) {
        self.color = color
    }
    func sound() {
        print("소리를 냅니다...")
    }
}
// 자식 클래스의 생성자에서 부모 클래스의 생성자를 호출하여
// 초기화를 수행할 수 있습니다.
class Dog_02 : Animal_02 {
    var age: Int
    init(color: String, age: Int) {
        self.age = age
        // 부모클래스의 생성자를 호출하는 코드
        // - 부모클래스의 멤버필드는 부모클래스의 생성자를
        //   통해서 초기화를 해야합니다.
        // - super.init() 코드를 사용하여 부모클래스의
        //   생성자를 호출할 수 있으며, 반드시 자식클래스의
        //   모든 멤버필드를 초기화한 이후에 호출해야 합니다.
        super.init(color: color)
    }
    
    // 부모 클래스의 생성자와 동일한 형태의 생성자를
    // 자식 클래스에서 사용하기 위해서는
    // override 키워드를 사용해야만 합니다.
    override init(color: String) {
        self.age = 0
        super.init(color: color)
    }
}
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스의 상속
// 메소드 오버라이딩
// 부모 클래스의 메소드를 자식 클래스에서 새롭게 재정의 하는 문법
// 객체지향의 다형성 구현을 위해서 사용되는 문법
class Animal_03 {
    func sound() {
        print("소리를 냅니다...")
    }
}
class Dog_03 : Animal_03 {
    // 부모 클래스의 sound 메소드를 자식클래스에서
    // 새롭게 재정의하기 위해서는
    // override 키워드를 사용해야만 합니다.
    override func sound() {
        print("멍멍...")
    }
}
var dog_03 = Dog_03()
dog_03.sound()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스의 상속
// 객체 형변환
// 상속관계를 구현하고 있는 부모 클래스와 자식 클래스 사이에서는
// 객체간의 형변환이 가능합니다.
// (부모클래스의 변수를 사용하여 자식 클래스의 객체를 참조할 수 있음)

class Animal_04 {
    func sound() {
        print("소리를 냅니다...")
    }
}
class Dog_04 : Animal_04 {
    override func sound() {
        print("멍멍...")
    }
}
// 부모 클래스 타입의 변수를 사용하여
// 자식 클래스의 객체를 참조할 수 있음
var animal_04: Animal_04 = Dog_04()
// 만약, 자식 클래스에서 부모 클래스의 메소드를 오버라이딩한 경우
// 부모 클래스의 변수를 사용하여 오버라이딩된 자식 클래스의
// 메소드를 호출할 수 있음
animal_04.sound()
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스
// 소멸자 - deinit
//  - 객체가 소멸될 때 자동호출되는 메소드로 객체의 정보를 저장하거나
//    알림을 주고자 하는 경우 사용될 수 있습니다.
//  - deinit 메소드는 매개변수를 포함하지 않습니다.
//  - deinit 메소드는 리턴값을 사용할 수 없습니다.

class Animal_05 {
    init() {
        print("Animal_05의 객체 생성")
    }
    // deinit 을 정의하여 해당 클래스의 객체가 소멸될 때
    // 실행할 코드를 정의할 수 있습니다.
    deinit {
        print("Animal_05의 객체 소멸")
    }
}
var animal_05: Animal_05? = Animal_05()
// 객체를 참조하고 있던 변수에 nil 값이 대입되면
// 해당 객체를 소멸됩니다.
animal_05 = nil
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// 클래스
// Stored Property, Computed Property
// Stored Property :
// - 일반적인 클래스 또는 구조체의 멤버 변수로서 데이터를 저장하는 하는 용도로
//   사용되는 변수를 의미함
// Computed Property :
// - 클래스 또는 구조체의 멤버 변수로 선언되지만 set/get 메소드를 포함하고 있는
//   멤버 변수를 의미함
// - 값의 대입 시 set 메소드가 실행
// - 값이 대입 되는 경우 입력되는 데이터는 newValue 이름으로 접근
// - 값의 참조 시 get 메소드가 실행
class Hex {
    var decimal: Int?
    var hexString: String? {
        get {
            if let decimal = self.decimal {
                return String(decimal, radix: 16)
            } else {
                return nil
            }
        }
        set {
            if let newValue = newValue {
                self.decimal = Int(newValue, radix: 16)
            } else {
                self.decimal = nil
            }
        }
    }
}

var hex = Hex()
hex.decimal = 10
print(hex.hexString)

hex.hexString = "b"
print(hex.decimal)
////////////////////////////////////////////////////////////






