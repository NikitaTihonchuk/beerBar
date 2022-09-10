

import UIKit


class ViewController: UIViewController {
 
    @IBOutlet weak var guinessLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var heinekenLabel: UILabel!
    @IBOutlet weak var counterLabel2: UILabel!
    
    @IBOutlet weak var grimbergenLabel: UILabel!
    @IBOutlet weak var counterLabel3: UILabel!
    
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton2: UIButton!
    @IBOutlet weak var plusButton2: UIButton!
    
    @IBOutlet weak var minusButton3: UIButton!
    @IBOutlet weak var plusButton3: UIButton!
    
    
    
    
    @IBOutlet weak var sellButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var endButton: UIButton!
    
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
    }
    */
    var sum = 0
    var c = Manger.shared.count
    var d = Manger.shared.count
    var e = Manger.shared.count
    var beer1 = Manger.shared.makeBeer(name: "Guiness", price: 1.5, volume: 10)
    var beer2 = Manger.shared.makeBeer(name: "Heineken", price: 0.99, volume: 10)
    var beer3 = Manger.shared.makeBeer(name: "Grimbergen", price: 2.39, volume: 10)
    
    
    @IBAction func minusButton(_ sender: UIButton) {
        self.c -= 1
        if self.c < 0 {
            self.c = 0
        }
        self.counterLabel.text = "\(c)"
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        self.c += 1
        if self.c > self.beer1.volume {
            self.c -= 1
        }
        self.counterLabel.text = "\(c)"
    }
    
    @IBAction func minusButton2(_ sender: UIButton) {
        self.d -= 1
        if self.d < 0 {
            self.d = 0
        }
        self.counterLabel2.text = "\(d)"
     
    }
    @IBAction func plusButton2(_ sender: UIButton) {
        self.d += 1
        if self.d > self.beer2.volume {
            self.d -= 1
        }
        self.counterLabel2.text = "\(d)"
    }
    
    
    @IBAction func minusButton3(_ sender: UIButton) {
        self.e -= 1
        if self.e < 0 {
            self.e = 0
        }
        self.counterLabel3.text = "\(e)"
      
    }
    @IBAction func plusButton3(_ sender: UIButton) {
        self.e += 1
        if self.e > self.beer3.volume {
            self.e -= 1
        }
        self.counterLabel3.text = "\(e)"
        
    }
    
    
    @IBAction func sellButton(_ sender: UIButton) {
        beer1.volume -= c
        beer2.volume -= d
        beer3.volume -= e
        self.infoLabel.text = "\(c) \(beer1.name)=\(beer1.price * Double(c))$, \(d) \(beer2.name)=\(Float(beer2.price * Double(d)))$, \(e) \(beer3.name)=\(Float(beer3.price * Double(e)))$. Total Amount: \(Float(beer1.price * Double(c) + beer2.price * Double(d) + beer3.price * Double(e)))$"
        c = 0
        self.counterLabel.text = "\(c)"
        d = 0
        self.counterLabel2.text = "\(d)"
        e = 0
        self.counterLabel3.text = "\(e)"
        //var sum = beer1.price * Double(c) + beer2.price * Double(d) + beer3.price * Double(e)
    }
    @IBAction func startDayButton(_ sender: UIButton) {
        
        //let beer1 = Manger.shared.makeBeer(name: "Beer Mix", price: 1.5, volume: 100)
       // let beer2 = Manger.shared.makeBeer(name: "Alivariya", price: 0.99, volume: 100)
      //  let beer3 = Manger.shared.makeBeer(name: "Korona", price: 2.39, volume: 100)
        
        self.guinessLabel.text = beer1.name
        self.heinekenLabel.text = beer2.name
        self.grimbergenLabel.text = beer3.name
        
        beer1.volume = 10
        beer2.volume = 10
        beer3.volume = 10
        
        self.infoLabel.text = "\(beer1.name)-\(beer1.price);\(beer2.name)-\(beer2.price);\(beer3.name)-\(beer3.price)"
        
        
        
    }
    @IBAction func endDayButton(_ sender: UIButton) {
        self.infoLabel.text = " Total earnings for the day is \(Float(Double((10 - beer1.volume)) * beer2.price + Double((10 - beer2.volume)) * beer3.price + Double((10 - beer3.volume)) * beer3.price))$"
    }
    
}
