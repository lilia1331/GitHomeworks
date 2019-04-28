import UIKit
import Foundation

print("1. Создайте тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У негоесть координата в комнате X и Y. Реализуйте функцию, которая красивенько текстом будет показывать положение персонажа в комнате")

struct Room {
    var height: Int
    var width: Int
}

print("2. Персонажу добавьте метод идти, который принимает энумчик лево, право, верх, вниз.Этот метод должен передвигать персонажа. Реализуйте правило что персонаж не должен покинуть пределы комнаты. Подвигайте персонажа и покажите это графически")


struct Cat {
  var  x: Int
  var  y: Int
   
    enum Move {
        case up
        case down
        case right
        case left
    }

  mutating  func move(At m: Move) {
        switch m {
        case .up:
            self.y += 1
        case .right:
            self.x += 1
        case .down:
            self.y -= 1
        case .left:
            self.x -= 1
        default:
            print("yps")
        }
    }
}


func replace(myString: String, _ index: Int, _ newChar: Character) -> String {
    var chars = Array(myString.characters)     // gets an array of characters
    chars[index] = newChar
    let modifiedString = String(chars)
    return modifiedString
}

 func printout(cat: Cat, In room: Room){
    var floor = ""
    for _ in 1...room.width {
        floor += "\u{1F532}"
    }
    for i in 1...room.height {
        if cat.x == i {
            print(replace(myString: floor, i - 1, "\u{1F408}"))
        } else {
            print(floor)
        }
        
    }
}

var c = Cat(x: 3, y: 6)
var r = Room(height: 8, width: 10)

printout(cat: c, In: r)
print("\(c.x) and \(c.y)")
c.move(At: .right)
print("\n\n\n")
print("\(c.x) and \(c.y)")
printout(cat: c, In: r)

