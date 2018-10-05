

class Porshe {
    
    func getPrice() -> Double {
        return 100
    }
    
    func getDescription() -> String {
        return "Porshe"
    }
    
}


class Boxter: Porshe {
    
    override func getPrice() -> Double {
        return super.getPrice() + 20
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " " + "Boxter"
    }
    
}

class PorsheDecorator: Porshe {
    
    private let decoratedPorshe: Porshe
    
    required init(dp: Porshe) {
        self.decoratedPorshe = dp
    }
    
    override func getPrice() -> Double {
        return decoratedPorshe.getPrice()
    }
    
    override func getDescription() -> String {
        return decoratedPorshe.getDescription()
    }
    
}

class PremiumAudioSystem: PorsheDecorator {
    
    required init(dp: Porshe) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with premium audio system"
    }
    
}

class TurboBoost: PorsheDecorator {
    
    required init(dp: Porshe) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 50
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with turbo boost"
    }
    
}

var porsheBoxter: Porshe = Boxter()
porsheBoxter.getPrice()
porsheBoxter.getDescription()

porsheBoxter = TurboBoost(dp: porsheBoxter)
porsheBoxter.getPrice()
porsheBoxter.getDescription()

porsheBoxter = PremiumAudioSystem(dp: porsheBoxter)
porsheBoxter.getPrice()
porsheBoxter.getDescription()

