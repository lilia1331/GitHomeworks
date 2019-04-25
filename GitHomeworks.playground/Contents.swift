import UIKit
import Foundation

print("1. Создать структуру “Описание файла” содержащую свойства:")
//    - путь к файлу
//    - имя файла
//    - максимальный размер файла на диске
//    - путь к папке, содержащей этот файл
//    - тип файла (скрытый или нет)
//    - содержимое файла (можно просто симулировать контент)
//
//    Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.

struct FileDescription {
    enum FileType {
        case hidden
        case open
    }
    static var maxSize = 50
    var filePath: String
    var fileName: String
    var size: Int {
        didSet {
            if size > FileDescription.maxSize {
                size = oldValue
            }
        }
    }
    var pathToTheFolder: String
    var fileType: FileType
    lazy var content = "Контент файла"
}

print("2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.")

enum ColorScheme: Int {
    static var numberOfColors = 6
    static var initialColor = ColorScheme.white
    static var finalColor = ColorScheme.yellow
    
    case white = 0xFFFFFF
    case blue = 0x0000FF
    case red = 0xFF0000
    case green = 0x00FF00
    case gray = 0x808080
    case yellow = 0xFFFF00
}

print("3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:")
//    - минимальный и максимальный возраст каждого объекта
//    - минимальную и максимальную длину имени и фамилии
//    - минимально возможный рост и вес
//    - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса

class People {
    static let maxAge = 100
    static let minAge = 1
    static let maxHeight = 215
    static let minHeight = 40
    static let maxWeight = 250
    static let minWeight = 2
    static var totalPeople = 0
    
    var firstName: String {
        didSet {
            if firstName.count > 15 {
                firstName = oldValue
            }
        }
    }
    var lastName: String {
        didSet {
            if lastName.count > 20 {
                lastName = oldValue
            }
        }
    }
    var age: Int {
        didSet {
            if age > People.maxAge || age < People.minAge {
                age = oldValue
        }
    }
}
    var height: Int {
        didSet {
            if height > People.maxHeight || height < People.minAge {
                height = oldValue
        }
    }
}
    var weight: Int {
        didSet {
            if weight > People.maxWeight || weight < People.minWeight {
                weight = oldValue
            }
        }
    }
    
    init(firstName: String, lastName: String, age: Int, height: Int, weight: Int ) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.height = height
        self.weight = weight
        
        People.totalPeople += 1
    }
}

