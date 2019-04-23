import UIKit

print("//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).")

struct StudentStruct {
    var name: String
    var lastName: String
    var dateOfBirth: String
    var GPA: Double
}

var Karina = StudentStruct(name: "Karina", lastName: "Karinina", dateOfBirth: "20.01.1999", GPA: 4.2)
var Katia = StudentStruct(name: "Katia", lastName: "Volodina", dateOfBirth: "8.10.1994", GPA: 5.0)
var Igor = StudentStruct(name: "Igor", lastName: "Karinin", dateOfBirth: "20.01.1989", GPA: 3.6)
var Artur = StudentStruct(name: "Artur", lastName: "Pirozhkov", dateOfBirth: "7.09.1995", GPA: 3.9)
var Ira = StudentStruct(name: "Ira", lastName: "Solona", dateOfBirth: "29.01.1979", GPA: 4.7)
var Anna = StudentStruct(name: "Anna", lastName: "Karinina", dateOfBirth: "23.10.1999", GPA: 3.1)

var studentsStrArray = [Karina, Katia, Igor, Artur, Ira, Anna]

print("//2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.")

func printoutStudent(array: [StudentStruct]) {
    var index = 1
        for i in array {
            print("Порядковий номер студента: \(index)")
            print("Прізвище, ім'я: \(i.lastName), \(i.name)")
            print("Дата народження: \(i.dateOfBirth)")
            print("Середній бал: \(i.GPA)")
            index += 1
    }
}
printoutStudent(array: studentsStrArray)

print("3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.")

let sortedGPAArray = studentsStrArray.sorted { (i, i2) -> Bool in
    i.GPA > i2.GPA
}
for i in sortedGPAArray {
    print("Середній бал \(i.lastName) \(i.name) - \(i.GPA)")
}

print("4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.")

let sortedLNArray = studentsStrArray.sorted { (i, i2) -> Bool in

    if i.lastName == i2.lastName {
        return i.name.first! < i2.name.first!
    } else {
        return  i.lastName < i2.lastName
    }
}

for i in sortedLNArray {
    print(i.lastName + " " + i.name)
}

print("5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.")

var changeArray = studentsStrArray
changeArray[0] = StudentStruct(name: "lol", lastName: "ololol", dateOfBirth: "23.23.23", GPA: 23)
changeArray[1] = StudentStruct(name: "lol", lastName: "ololol", dateOfBirth: "23.23.23", GPA: 23)
changeArray[2] = StudentStruct(name: "lol", lastName: "ololol", dateOfBirth: "23.23.23", GPA: 23)

changeArray
studentsStrArray


print("6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?")

class StudentClass {
    let name: String
    let lastName: String
    let dateOfBirth: String
    let GPA: Double
    
    init(name: String, lastName: String, dateOfBirth: String, GPA: Double) {
        self.name = name
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.GPA = GPA
    }
}

var c1 = StudentClass(name: "Karina", lastName: "Karinina", dateOfBirth: "20.01.1999", GPA: 4.2)
let c2 = StudentClass(name: "Katia", lastName: "Volodina", dateOfBirth: "8.10.1994", GPA: 5.0)
let c3 = StudentClass(name: "Igor", lastName: "Karinin", dateOfBirth: "20.01.1989", GPA: 3.6)
let c4 = StudentClass(name: "Artur", lastName: "Pirozhkov", dateOfBirth: "7.09.1995", GPA: 3.9)
let c5 = StudentClass(name: "Ira", lastName: "Solona", dateOfBirth: "29.01.1979", GPA: 4.7)
let c6 = StudentClass(name: "Anna", lastName: "Karinina", dateOfBirth: "23.10.1999", GPA: 3.1)

var studentClassArray = [c1, c2, c3, c4, c5, c6]
var testArray = studentClassArray

c1 = StudentClass(name: "lolo", lastName: "lolo", dateOfBirth: "lolo", GPA: 3)

studentClassArray
testArray

//007. Уровень супермен

//Выполните задание шахмат из урока по энумам используя структуры либо классы
