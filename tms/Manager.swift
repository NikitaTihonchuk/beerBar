import Foundation

class Manger {
    
    static let shared = Manger()
    
    private init() {}
    
    var count = 0
    
    func min(count:Int) -> Int {
        self.count = self.count - 1
        if self.count < 0 {
            self.count = 0
        } else {
            self.count += 1

        }
        
        return self.count
    }
    
    func plu(count:Int) {
        
         self.count += 1
    }
    
    func makeBeer(name:String, price:Double, volume:Int) -> BeerBar {
        
        let Beer = BeerBar(name: name, price: price, volume: volume)
        
        return Beer
    }
    
}
