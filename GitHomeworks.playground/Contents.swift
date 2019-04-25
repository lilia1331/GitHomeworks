import UIKit
import Foundation

print("1. Самостоятельно повторить проделанное в уроке")
print("2. Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)")

struct DateOfBirth {
    var day: Int
    var month: Int
    var year: Int
    var age: Int {
        get {
            return 2019 - year
        }
    }
    var teaching: Int {
        get {
            if age <= 6 {
                return 0
            } else {
                return age - 6
                
            }
        }
    }
}

struct Student {
    var firstName: String {
        willSet(newFirstName) {
            print(newFirstName + " замінить " + firstName)
            
        } didSet(oldFirstName) {
            print(firstName + " замінило " + oldFirstName)
            firstName.capitalized
        }
    }
    var lastName: String
    var fullName: String {
        get {  return firstName + " " + lastName
        }
        set {
           print("fullName хоче змінити на" + newValue)
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
            firstName = words[0]
            }
            if words.count > 1 {
            lastName = words[1]
            }
        }
    }
    var dateOfBirth: DateOfBirth
}

var student = Student(firstName: "Lilia", lastName: "Chmola", dateOfBirth: DateOfBirth(day: 28, month: 12, year: 1995))
    
student.dateOfBirth.teaching


print("3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями)")
print("4. При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B")

struct Point {
    var x: Double
    var y: Double
}

struct Offcut {
    var a: Point
    var b: Point
    var length: Double {
        get {
          return (a.x + b.x) - 1
        }
        set {
            print("\(newValue), \(length)")
            newValue
        }

    }

    var middle: Point {
        get {
            let x = (a.x + b.x) / 2
            let y = (a.y + b.y) / 2
            return Point(x: x, y: y)
        }
        set {
            print("\(newValue), \(middle)")
          // Point(x: newValue.x , y: newValue.y)
            length = newValue.x * 2
        }
    }
}

var ab = Offcut(a: Point(x: 1, y: 1), b: Point(x: 10, y: 1))

ab.middle = Point(x: 2, y: 3)
ab.length



