import UIKit

// 옵셔널 체이닝
// 옵셔널 변수는 nil 값을 포함할 수 있는 변수
// 옵셔널 변수가 nil 값을 가지는 경우 접근연산자의 사용 시
// 런타임 에러가 난다.
// 런타임 에러를 방지하기 위해 옵셔널 바인딩을 사용할 수 있지만
// 객체 타입의 옵셔널 변수를 사용한 메소드 호출과 같은 경우
// 코드 작성이 번거롭다는 단점이 있다.
// - 옵셔널 바인딩
/*
 if[let/var] 변수명 = 옵셔널변수명 {
    옵셔널 변수가 nil이 아닌 경우의 실행 코드
 } else {
    옵셔널 변수가 nil인 경우의 실행 코드
 }
*/
// - 옵셔널 체이닝
/*
    옵셔널변수명?.멤버필드/메소드호출
*/

class Address {
    var address_1: String
    var address_2: String?
    var zip_code: String?
    init(address_1: String) {
        self.address_1 = address_1
    }
}

class Member {
    var id: String
    var name: String
    var address: Address?
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

var member: Member = Member(id: "id_123", name: "name_123")
print("id -> \(member.id)")
print("name -> \(member.name)")

// 멤버필드로 다른 클래스의 레퍼런스 변수가 옵셔널 변수로 지정되어 있는 경우
// 아래와 같이 !를 사용하여 강제로 옵셔널 변수에 접근하는 방식은
// 런타임 에러를 발생할 수 있다.
// (옵셔널 변수가 nil 값을 가지고 있는 경우에만 에러가 발생)
// print("address.address_1 -> \(member.address!.address_1)")

if let address = member.address {
    print("address.address_1 -> \(address.address_1)")
    print("address.address_2 -> \(address.address_2)")
    print("address.zip_code -> \(address.zip_code)")
} else {
    print("회원정보에 주소 정보가 존재하지 않습니다.")
}
// ?. 은 nil이 아니면 뒤의 것에 접근하라는 것임
// 옵셔널 체이닝을 활용한 옵셔널 변수 호출 방법
// 옵셔널변수명?.멤버필드
// 해당 옵셔널 변수가 nil 값을 저장하고 있는 경우 nil 값이 반환되고
// nil 값이 아닌 경우 실제 호출이 실행되어 실행 결과가 반환된다.
print("address.address_1 -> \(member.address?.address_1)")
print("address.address_2 -> \(member.address?.address_2)")
print("address.zip_code -> \(member.address?.zip_code)")
