/* пив бар класс пивбар, св-ва: имя цена остаток объема. Реализовать продажу пива через сингелтон. Проверка выручки в конце дня обнуление выручки, проверка остатков а также ко всему этому графический интерфейс */
import Foundation

class BeerBar {
    
    var price:Double
    var volume:Int
    var name:String
   
    
    init(name:String, price:Double, volume:Int) {
        self.price = price
        self.name = name
        self.volume = volume
    }
}
