import UIKit

// 컬렉션
// 다수의 데이터들을 저장하기 위한 방법을 제공해주는 객체
// Array, Set, Dictionary

// Array
// - 기존의 배열을 저장할 수 있는 구조체
// - 데이터 입력 순서를 유지
// - 데이터 중복 허용
// - 자바의 ArrayList, LinkedList 와 유사함
// - 제네릭 문법이 적용되어 특정 타입을 저장할 수 있다.

// 비어있는 Array 생성 예제
var list_1: Array<Int> = []
var list_2 = [Int]()
var list_3: Array<Int> = Array()

// Array 내부에 저장된 데이터의 개수 확인
print("list_1 내부의 데이터 개수 -> \(list_1.count)")

// Array 내부에 데이터가 존재하는지 않는지 확인하는 방법
print("list_1 내부에 데이터가 존재하나요? -> \(!list_1.isEmpty)")

// Array 데이터 추가
// - append 메소드 사용
// - 해당 Array 의 가장 마지막에 추가
list_1.append(10)
list_1.append(20)
list_1.append(30)

print(list_1)

list_1.insert(0, at: 0)

print(list_1)

// Array 데이터 삭제
// - remove 메소드 사용
// - 해당 Array의 특정 인덱스 위치의 데이터를 삭제
list_1.remove(at: 3)

print(list_1)

// list_1 의 첫 번재 요소의 값을 출력
print("list_1 의 첫번째 요소 -> \(list_1[0])")
print("list_1 의 첫번째 요소 -> \(list_1.first)")

// list_1의 마지막 요소의 값을 출력
print("list_1 의 마지막 요소 -> \(list_1[list_1.count - 1])")
print("list_1 의 마지막 요소 -> \(list_1.last)")

// Array 내부의 데이터 순회 방법
for data in list_1 {
    print(data)
}

// Array 내부의 특정 인덱스 범위의 데이터 순회 방법
for data in list_1[1...2] {
    print(data)
}

// 컬렉션
// Set
// - 자바의 HashSet과 유사한 타입
// - 데이터 입력 순서는 유지하지 않음
// - 데이터 중복 허용 X
// - 일반적으로 검색을 위해 사용
// - 제네릭 문법이 적용되어 특정 타입을 저장할 수 있다.
var set_1: Set<String> = Set()
var set_2: Set<String> = []

// Set 내부에 저장된 데이터의 개수 확인
print("set_1 내부의 데이터 개수 -> \(set_1.count)")
// Set 내부에 데이터가 존재하는지 확인
print("set_1 내부의 데이터? -> \(set_1.isEmpty)")

// Set 내부에 데이터를 추가
set_1.insert("One")
set_1.insert("Two")
set_1.insert("Three")

// Set 내부에 저장된 데이터의 개수 확인
print("set_1 내부의 데이터 개수 -> \(set_1.count)")
print(set_1)

// 동일한 데이터의 입력을 허용하지 않는다.
set_1.insert("One")

print("set_1 내부의 데이터 개수 -> \(set_1.count)")
print(set_1)

// Set 내부의 데이터 삭제
print(set_1.remove("Two"))
print("set_1 내부의 데이터 개수 -> \(set_1.count)")
print(set_1)

print(set_1.remove("Five"))
print("set_1 내부의 데이터 개수 -> \(set_1.count)")
print(set_1)

// Set 내부의 데이터 순회 방법
for data in set_1 {
    print(data)
}

// 컬렉션
// Dictionary
// - 자바의 Hashtable, HashMap 과 유사한 타입
// - 키와 밸류의 쌍으로 데이터를 저장
// - 데이터 입력 순서를 유지하지 않음
// - 키 값의 중복을 허용하지 않음
// - 일반적으로 검색을 위해서 사용
// - 제네릭 문법이 적용되어 특정 타입을 저장할 수 있음

var dictionary_1: Dictionary<String, Int> = [:]
var dictionary_2 = [String:Int]()
var dictionary_3: Dictionary<String, Int> = Dictionary()

// Dictionary 내부에 저장된 데이터의 개수 확인
print("dictionary_1 내부의 데이터 개수 -> \(dictionary_1.count)")

// Dictionary 내부에 데이터가 존재하지 않는 지 확인하는 방법
print("dictionary_1 내부의 데이터? -> \(dictionary_1.isEmpty)")

// Dictionary 내부에 데이터 추가
dictionary_1.updateValue(1, forKey: "One")
dictionary_1.updateValue(2, forKey: "Two")
dictionary_1.updateValue(3, forKey: "Three")

print("dictionary_01 내부의 데이터 개수 -> \(dictionary_1.count)")
print(dictionary_1)

// Dictionary 내부의 데이터 확인
print(dictionary_1["One"]!)

// Dictionary 내부에 존재하지 않는 키값을 검색하는 경우
// nil 값이 반환. (에러 X)
print(dictionary_1["Five"])

// Dictionary so부에 저장된 데이터 삭제
print(dictionary_1.removeValue(forKey: "One"))

print("dictionary_01 내부의 데이터 개수 -> \(dictionary_1.count)")
print(dictionary_1)
