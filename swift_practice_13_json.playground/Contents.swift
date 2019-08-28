import UIKit

// JSON 형식으로 처리될 모델 클래스
// - JSON 형식으로 변환되는 클래스는 Codable 인터페이스를 구현해야한다.
class Member : Codable {
    var id: String?
    var age: Int?
}

var list: Array<Member> = Array()

for index in 1 ... 10 {
    var member = Member()
    member.id = "id_\(index)"
    member.age = index + 20
    list.append(member)
}

print(list)

/*
 [{id : id_1, age : 21}, ...]
*/
var jsonData_list = try JSONEncoder().encode(list)

print(String(data: jsonData_list, encoding: .utf8)!)

var decode_list = try JSONDecoder().decode(Array<Member>.self, from: jsonData_list)
print("decode_list.count -> \(decode_list.count)")
print(decode_list)

var dictionary: Dictionary<String, Member> = [:]
for i in 1 ... 10 {
    var m = Member()
    m.id = "id_\(i)"
    m.age = i + 20
    dictionary.updateValue(m, forKey: m.id!)
}

var jsonData_dictionary = try JSONEncoder().encode(dictionary)
print(jsonData_dictionary)
print(String(data: jsonData_dictionary, encoding: .utf8)!)

var decode_dictionary = try JSONDecoder().decode(Dictionary<String, Member>.self, from: jsonData_dictionary)
print("decode_list.count -> \(decode_dictionary.count)")
// print(decode_dictionary)

var jsonString = """
{"id" : "admin", "age" : 27}
"""
print(jsonString)

var jsonData = jsonString.data(using: .utf8)
print(jsonData)
var decode_one = try JSONDecoder().decode(Member.self, from: jsonData!)
print(decode_one.id)
print(decode_one.age)
